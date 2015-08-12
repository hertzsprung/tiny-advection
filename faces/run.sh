#!/bin/bash
set -e
pyFoamClearCase.py .
blockMesh
setVelocityField
setScalarOverOrography
advectiveFoamF
setScalarOverOrography -tracerFieldFileName Tf_analytic -time 10000
