#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Script para preprocesar imagen 2D de hueso desgrasado

#import dicom
import os
import matplotlib.pyplot as plt
from pylab import imread
import numpy as np
from skimage import data, color
import pydicom

#imagen = 'modelo_65_6974mm.png'
#BONE = imread(imagen)
#image_gray = color.rgb2gray(BONE)

from skimage import measure
from skimage.transform import (hough_line, hough_line_peaks,probabilistic_hough_line)
from skimage.feature import canny

from shapely.geometry import Polygon



#Dicom con data
archivo = '/home/ramiro/Documentos/CIC-2024/Microwave imaging/Database/ACOSTA_GUSTAVO/Study20110808_205745/No_Series_Name/CT80280000021.dcm'

#y = image_gray[430,350:600]
#x = np.arange(len(y), dtype=float)

#minimo =  np.argmax(y[0:int(len(y)/2)])
#maximo =  int(len(y)/2)+np.argmax(y[int(len(y)/2):-1])

#print ('Longitud en pixeles:',maximo-minimo)

slice1 = pydicom.dcmread(archivo)

#DeltaX = 0.412488298 #PixelSpacing

# pixel aspects, assuming all slices are the same
ps = slice1.PixelSpacing
ss = slice1.SliceThickness

print ('Definicion en mm/pixel:',ps)
print ('Espacio entre slices en mm:',ss)
DeltaX = ps[0]

img2d = slice1.pixel_array

imagen_norm = img2d/np.amax(img2d)

n = float(len(imagen_norm[:,0]))


extent=[0.0,n*DeltaX*1.0e-3,0.0,n*DeltaX*1.0e-3]

#edges = canny(BONE[:,:,2], sigma=0.1,)
#edges = canny(img2d,low_threshold = 200.0)#, sigma=0.1,)
#print(max(img2d[:,200]))
#ax[0].imshow(BONE, cmap=plt.cm.gray, interpolation='nearest',extent = extent)#
##axes.imshow(BONE, cmap=plt.cm.gray, interpolation='nearest',extent = extent)#
#ax[1].imshow(edges)#, cmap=plt.cm.gray, interpolation='nearest')#,extent = extent)#


#Contornos de huesos

contours = measure.find_contours(imagen_norm,0.5)
a = []

for n, contour in enumerate(contours):
    if len(contour) > 50:
        fig, ax = plt.subplots(1, 1, figsize=(8, 8), )#sharex=True, sharey=True,)
        ax.imshow(imagen_norm, cmap=plt.cm.gray, interpolation='nearest')#,extent = extent)#
        ax.plot(contour[:, 1], contour[:, 0], linewidth=2)
        plt.show()
        print('¿Corresponde a un contorno de huesos?')
        s = input()
        if s == 's':
            print('¡Se sumó a la lista de contornos!')
            a.append(n)

print(a[0])
contorno_hueso1 = contours[a[0]]
contorno_hueso2 = contours[a[1]]


#Contornos de piel
contours2 = measure.find_contours(imagen_norm,0.2)
a = []

for n, contour in enumerate(contours2):
    if len(contour) > 50:
        fig, ax = plt.subplots(1, 1, figsize=(8, 8), )#sharex=True, sharey=True,)
        ax.imshow(imagen_norm, cmap=plt.cm.gray, interpolation='nearest')#,extent = extent)#
        ax.plot(contour[:, 1], contour[:, 0], linewidth=2)
        plt.show()
        print('¿Corresponde a un contorno de piel?')
        s = input()
        if s == 's':
            print('¡Se sumó a la lista de contornos!')
            a.append(n)


print(a[0])
contorno_piel = contours2[a[0]]

fig, ax = plt.subplots(1, 1, figsize=(8, 8), )#sharex=True, sharey=True,)
ax.imshow(imagen_norm, cmap=plt.cm.gray, interpolation='nearest',extent = extent,origin='lower')#
ax.plot(contorno_piel[:, 1]*DeltaX*1.0e-3, contorno_piel[:, 0]*DeltaX*1.0e-3, linewidth=2)
ax.plot(contorno_hueso1[:, 1]*DeltaX*1.0e-3, contorno_hueso1[:, 0]*DeltaX*1.0e-3, linewidth=2)
ax.plot(contorno_hueso2[:, 1]*DeltaX*1.0e-3, contorno_hueso2[:, 0]*DeltaX*1.0e-3, linewidth=2)
ax.set_title('Contornos finales')
ax.set_xlabel('x (m)')
ax.set_ylabel('y (m)')
plt.show()

xmax = max(contorno_piel[:,1]*DeltaX*1.0e-3)
ymax = max(contorno_piel[:,0]*DeltaX*1.0e-3)
xmin = min(contorno_piel[:,1]*DeltaX*1.0e-3)
ymin = min(contorno_piel[:,0]*DeltaX*1.0e-3)
xcen = (xmax-xmin)/2.0+xmin
ycen = (ymax-ymin)/2.0+ymin

print ('xmin:',xmin,'xmax:',xmax)
print ('ymin:',ymin,'ymax:',ymax)


#---------------------------------------
#Construcción del archivo .geo para GMSH
archivoout = 'munieca2d.geo'

f = open (archivoout, "w")
f.write("//Meshing calcaneus bone.\n")
f.close()
f = open (archivoout, "a")
f.write("//Inputs;\n")
f.write('gridsize = 1;\n')
i = 1
line = 1
surface = ''
superficies = 1

n = 1

#Hueso 1
centrar = np.zeros_like(contorno_hueso1)
centrar[:,1] = xcen
centrar[:,0] = ycen

contour = contorno_hueso1*DeltaX*1.0e-3-centrar


polygon = Polygon(contour)
xcenh1 = polygon.centroid.x*DeltaX*1.0e-3
ycenh1 = polygon.centroid.y*DeltaX*1.0e-3
print('x: ',xcenh1,'y: ',ycenh1)


lineas = []
a = contour[:,1]
contourx = a[::10]
a = contour[:,0]
contoury = a[::10]

for m in range(len(contoury)):
    aa='Point('+str(i)+')= {'+str(contourx[m])+','+str(contoury[m])+',0,gridsize};\n'
    f.write(aa)
    i = i+1
aa='\n'
f.write(aa)
for r in range(len(contoury)-1):
    ini = len(contoury)
    aa = 'Line('+str(line)+') = {'+str(i-ini+r)+','+str(i+1-ini+r)+'} ;\n'
    lineas.append(line)
    line = line+1
    f.write(aa)
    
aa = 'Line('+str(line)+') = {'+str(i-ini+len(contoury)-1)+','+str(i-ini)+'} ;\n'
f.write(aa)
lineas.append(line)

line = line+1
aa='\n'
f.write(aa)
        
aa = 'Line Loop('+str(n)+') = {'
f.write(aa)
for k in range(len(lineas)-1):
    aa = str(lineas[k])+','
    f.write(aa)
aa = str(lineas[-1])+'};\n'
f.write(aa)
surface = surface+str(n)+','
aa = 'Plane Surface('+str(superficies)+') = {'+str(n)+'};\n'
f.write(aa)

superficies = superficies+1

#Hueso 2
centrar = np.zeros_like(contorno_hueso2)
centrar[:,1] = xcen
centrar[:,0] = ycen

contour = contorno_hueso2*DeltaX*1.0e-3-centrar

lineas = []
a = contour[:,1]
contourx = a[::10]
a = contour[:,0]
contoury = a[::10]

for m in range(len(contoury)):
    aa='Point('+str(i)+')= {'+str(contourx[m])+','+str(contoury[m])+',0,gridsize};\n'
    f.write(aa)
    i = i+1
aa='\n'
f.write(aa)
for r in range(len(contoury)-1):
    ini = len(contoury)
    aa = 'Line('+str(line)+') = {'+str(i-ini+r)+','+str(i+1-ini+r)+'} ;\n'
    lineas.append(line)
    line = line+1
    f.write(aa)

aa = 'Line('+str(line)+') = {'+str(i-ini+len(contoury)-1)+','+str(i-ini)+'} ;\n'
f.write(aa)
lineas.append(line)

line = line+1
aa='\n'
f.write(aa)

aa = 'Line Loop('+str(n+1)+') = {'
f.write(aa)
for k in range(len(lineas)-1):
    aa = str(lineas[k])+','
    f.write(aa)
aa = str(lineas[-1])+'};\n'
f.write(aa)
surface = surface+str(n)+','
aa = 'Plane Surface('+str(superficies)+') = {'+str(n+1)+'};\n'
f.write(aa)

superficies = superficies+1




#Piel
centrar = np.zeros_like(contorno_piel)
centrar[:,1] = xcen
centrar[:,0] = ycen
contour = contorno_piel*DeltaX*1.0e-3-centrar

#print (contour)
lineas = []
a = contour[:,1]
contourx = a[::10]
a = contour[:,0]
contoury = a[::10]

for m in range(len(contoury)):
    aa='Point('+str(i)+')= {'+str(contourx[m])+','+str(contoury[m])+',0,gridsize};\n'
    f.write(aa)
    i = i+1
aa='\n'
f.write(aa)
for r in range(len(contoury)-1):
    ini = len(contoury)
    aa = 'Line('+str(line)+') = {'+str(i-ini+r)+','+str(i+1-ini+r)+'} ;\n'
    lineas.append(line)
    line = line+1
    f.write(aa)
    
aa = 'Line('+str(line)+') = {'+str(i-ini+len(contoury)-1)+','+str(i-ini)+'} ;\n'
f.write(aa)
lineas.append(line)

line = line+1
aa='\n'
f.write(aa)
        
aa = 'Line Loop('+str(n+2)+') = {'
f.write(aa)
for k in range(len(lineas)-1):
    aa = str(lineas[k])+','
    f.write(aa)
aa = str(lineas[-1])+'};\n'
f.write(aa)
surface = surface+str(n)+','
aa = 'Plane Surface('+str(superficies)+') = {'+str(n+2)+','+str(n+1)+','+str(n)+'};\n'
f.write(aa)

superficies = superficies+1

#Dimensiones de la caja
#0.25 m x 0.25 m
print (xcen,ycen)
L = 0.25
#Caja exterior cuadrada!
aa = 'Point('+str(i)+')= {'+str(-L/2.0)+','+str(-L/2.0)+',0,gridsize};Point('+str(i+1)+')= {'+str(-L/2.0)+','+str(L/2.0)+',0,gridsize};\n'
f.write(aa)
aa = 'Point('+str(i+2)+')= {'+str(L/2.0)+','+str(L/2.0)+',0,gridsize};Point('+str(i+3)+')= {'+str(L/2.0)+','+str(-L/2.0)+',0,gridsize};\n'
f.write(aa)

aa = 'Line('+str(line+2)+') = {'+str(i)+','+str(i+1)+'} ;\n'
f.write(aa)
aa = 'Line('+str(line+3)+') = {'+str(i+1)+','+str(i+2)+'} ;\n'
f.write(aa)
aa = 'Line('+str(line+4)+') = {'+str(i+2)+','+str(i+3)+'} ;\n'
f.write(aa)
aa = 'Line('+str(line+5)+') = {'+str(i+3)+','+str(i)+'} ;\n'
f.write(aa)

aa = 'Line Loop('+str(n+3)+') = {'+str(line+2)+','+str(line+3)+','+str(line+4)+','+str(line+5)+'};\n'
f.write(aa)

aa = 'Plane Surface('+str(superficies)+') = {'+str(n+3)+','+str(n+2)+'};\n'
f.write(aa)


#Coloco puntos con mayor resolución en antenas
Tr = np.arange(16)
for tr in Tr:
    xr = (0.15/2)*np.cos(tr*2*np.pi/16.)
    yr = (0.15/2)*np.sin(tr*2*np.pi/16.)
    aa = 'Point('+str(1000+tr)+') = {'+str(xr)+','+str(yr)+',0,0.01/2};'
    f.write(aa)
    aa = 'Point{'+str(1000+tr)+'} In Surface{'+str(superficies)+'};'
    f.write(aa)



#"Medio de acoplamiento"
aa = 'Physical Surface(100) = {'+str(superficies)+'};\n'
f.write(aa)
#"Musculo"
aa = 'Physical Surface(200) = {'+str(superficies-1)+'};\n'
f.write(aa)
#"Calcaneo"
aa = 'Physical Surface(300) = {'+str(superficies-2)+','+str(superficies-3)+'};\n'
f.write(aa)

#"borde externo",
aa = 'Physical Line(10) = {'+str(line+2)+','+str(line+3)+','+str(line+4)+','+str(line+5)+'};\n'
f.write(aa)

aa = 'Mesh.CharacteristicLengthMax = 1.0e-2;\n'
f.write(aa)



f.close()


