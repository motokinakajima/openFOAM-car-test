blockMesh

surfaceFeatureExtract -dict surfaceFeatureExtract_mainBodyDict
surfaceFeatureExtract -dict surfaceFeatureExtract_FLDict
surfaceFeatureExtract -dict surfaceFeatureExtract_FRDict
surfaceFeatureExtract -dict surfaceFeatureExtract_RLDict
surfaceFeatureExtract -dict surfaceFeatureExtract_RRDict

snappyHexMesh

decomposePar

mpirun --allow-run-as-root -np 6 simpleFoam -parallel

reconstructPar