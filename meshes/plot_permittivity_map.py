#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Using Gmsh, dolfin-convert, and FEniCS to plot geometry
for FEM method.

"""

from __future__ import print_function

import os
import numpy as np
from scipy.constants import epsilon_0, pi

filename = 'patient1_slice1'

string = "gmsh -2 -clmax 20.e-3 "+filename+".geo"
os.system(string)

string = "dolfin-convert "+filename+".msh "+filename+".xml"
os.system(string)

from fenics import *

# Create mesh, subdomains, and boundaries
mesh = Mesh(filename+".xml");
subdomains = MeshFunction('size_t',mesh,filename+"_physical_region.xml");
boundaries = MeshFunction('size_t',mesh,filename+"_facet_region.xml");

import matplotlib.pyplot as plt

plt.figure(1)

plot(subdomains)
##Uncomment to show the mesh
#plot(mesh) 



#Position of the antennas
xposant = np.array([])
yposant = np.array([])
for n in range(0,16):
    xrint = (15.0e-2/2)*np.cos(n*2*pi/16)
    yrint = (15.0e-2/2)*np.sin(n*2*pi/16)
    xposant = np.append(xposant,xrint)
    yposant = np.append(yposant,yrint)

plt.plot(xposant,yposant,'ko',markeredgecolor ='k', markerfacecolor='w')

plt.ylabel(r'y (m)')
plt.xlabel(r'x (m)')

plt.show()
