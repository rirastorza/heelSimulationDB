#!/usr/bin/env python
# -*- coding: utf-8 -*-

## Test: create MEEP geometry, output_epsilon, and try to read this MEEP-generated hdf5
#https://github.com/NanoComp/meep/discussions/2376

from matplotlib import pyplot as plt
import numpy as np
import meep as mp
import h5py

import pydicom
#Dicom con data
archivo = '/home/ramiro/Documentos/CIC-2024/Microwave imaging/Database/ACOSTA_GUSTAVO/Study20110808_205745/No_Series_Name/CT80280000018.dcm'

slice1 = pydicom.dcmread(archivo)

img2d = slice1.pixel_array

# pixel aspects, assuming all slices are the same
ps = slice1.PixelSpacing
ss = slice1.SliceThickness

print ('Definicion en mm/pixel:',ps)
print ('Espacio entre slices en mm:',ss)
DeltaX = ps[0]
n = float(len(img2d[:,0]))
extent=[-(n/2)*DeltaX*1.0e-3,(n/2)*DeltaX*1.0e-3,-(n/2)*DeltaX*1.0e-3,(n/2)*DeltaX*1.0e-3,]

import matplotlib.pyplot as plt
import numpy as np
from skimage import data
from skimage.color import label2rgb
from skimage.filters import sobel
from skimage.measure import label
from skimage.segmentation import expand_labels, watershed

# Make segmentation using edge-detection and watershed.
edges = sobel(img2d)

# Identify some background and foreground pixels from the intensity values.
# These pixels are used as seeds for watershed.
markers = np.zeros_like(img2d)
foreground, background = 1, 2
markers[img2d < 100.0] = background
markers[img2d > 1500.0] = foreground
ws = watershed(edges, markers)
seg1 = label(ws == foreground)
markers2 = np.zeros_like(img2d)
markers2[seg1<2] = 1
markers3 = np.zeros_like(img2d)
markers3 = markers2*seg1

hueso = np.zeros_like(img2d)
foreground, background = 1, 0
hueso[img2d < 1600.0] = background
hueso[img2d > 1700.0] = foreground

musculo = markers3-hueso

#expanded = expand_labels(seg1, distance=10)

## Show the segmentations.
#fig, axes = plt.subplots(
    #nrows=1,
    #ncols=3,
    #figsize=(9, 5),
    ##sharex=True,
    ##sharey=True,
#)

#axes[0].imshow(img2d, cmap="Greys_r")
#axes[0].set_title("Original")

##color1 = label2rgb(seg1, image=img2d, bg_label=0)
##axes[1].imshow(color1)
#axes[1].imshow(musculo,extent = extent)
#axes[1].set_title("musculo")

##color2 = label2rgb(expanded, image=img2d, bg_label=0)
##axes[2].imshow(color2)
#axes[2].imshow(hueso,extent = extent)
#axes[2].set_title("hueso")

##for a in axes:
    ##a.axis("off")
##fig.tight_layout()
#plt.show()

##img2d = np.random.rand(2,2)
unos = np.ones_like(img2d)
img2d = musculo+unos
resolution = len(musculo)
cell_size = mp.Vector3((n)*DeltaX*1.0e-3,(n)*DeltaX*1.0e-3,0)


#print(arr)
f = h5py.File('random.h5', 'w')
dset = f.create_dataset('eps', data=img2d)

#print(list(f.keys()))
#dset = f['eps']
#print(type(dset))
#print(dset.shape)
#print(dset.dtype)

sim = mp.Simulation(resolution=resolution,
                    cell_size=cell_size,
                    epsilon_input_file="random.h5",
                    eps_averaging=False,
                   )

# manually initialize the sim object
sim.init_sim()

sim.plot2D()


plt.show()

