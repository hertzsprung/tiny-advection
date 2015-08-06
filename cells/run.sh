#!/bin/bash
set -e
pyFoamClearCase.py .
blockMesh
setVelocityField
setScalarOverOrography
advectiveFoamC
