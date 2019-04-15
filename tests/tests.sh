IMG1="http://menthe.ovh.hw.ipol.im/IARPA_data/cloud_optimized_geotif/01SEP15WV031000015SEP01135603-P1BS-500497284040_01_P001_________AAE_0AAAAABPABP0.TIF"
IMG2="http://menthe.ovh.hw.ipol.im/IARPA_data/cloud_optimized_geotif/02APR15WV031000015APR02134716-P1BS-500276959010_02_P001_________AAE_0AAAAABPABB0.TIF"
rpcm footprint ${IMG1}
rpcm projection ${IMG1} --lon -58.6096 --lat -34.4732
rpcm localization ${IMG1} -x 21377.790 -y 21481.055 -z 100
rpcm crop ${IMG1} tests/aoi.geojson c.tif
rpcm projection ${IMG1} --lon -58.602 --lat -34.488 --crop c.tif
rpcm angle ${IMG1} ${IMG2}
