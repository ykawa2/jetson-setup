# jetson-setup

## boot from SD card
cd ~/nvidia/nvidia_sdk/JetPack_4.6_Linux_JETSON_AGX_XAVIER_TARGETS/Linux_for_Tegra  
sudo ./flash.sh jetson-agx-xavier-devkit mmcblk1p1 (sudo ./flash.sh -h for help)  





# AGX environment
NVIDIA Jetson AGX Xavier [16GB]
 L4T 32.6.1 [ JetPack 4.6 ]
   Ubuntu 18.04.5 LTS
   Kernel Version: 4.9.253-tegra
 CUDA 10.2.300
   CUDA Architecture: 7.2
 OpenCV version: 4.1.1
   OpenCV Cuda: NO
 CUDNN: 8.2.1.32
 TensorRT: 8.0.1.6
 Vision Works: 1.6.0.501
 VPI: ii libnvvpi1 1.1.12 arm64 NVIDIA Vision Programming Interface library
 Vulcan: 1.2.70

## docker
NVIDIA Jetson AGX Xavier [16GB]
 L4T N.N.N [ JetPack UNKNOWN ]
   Ubuntu 18.04.5 LTS
   Kernel Version: 4.9.253-tegra
 CUDA 10.2.300
   CUDA Architecture: 7.2 <--
 OpenCV version: 4.5.0
   OpenCV Cuda: YES
 CUDNN: NOT_INSTALLED
 TensorRT: NOT_INSTALLED
 Vision Works: NOT_INSTALLED
 VPI: NOT_INSTALLED
 Vulcan: 1.2.70
 
The engine plan file is generated on an incompatible device, expecting compute 7.2 got compute 5.3, please rebuild.

 # Nano environment
 NVIDIA Jetson Nano (Developer Kit Version)
 L4T 32.6.1 [ JetPack 4.6 ]
   Ubuntu 18.04.5 LTS
   Kernel Version: 4.9.253
 CUDA 10.2.300
   CUDA Architecture: 5.3 <--  
 OpenCV version: 4.1.1
   OpenCV Cuda: NO
 CUDNN: 8.2.1.32
 TensorRT: 8.0.1.6
 Vision Works: 1.6.0.501
 VPI: ii libnvvpi1 1.1.11 arm64 NVIDIA Vision Programming Interface library
 Vulcan: 1.2.70


## docker
NVIDIA Jetson Nano (Developer Kit Version)
 L4T N.N.N [ JetPack UNKNOWN ]
   Ubuntu 18.04.5 LTS
   Kernel Version: 4.9.253
 CUDA 10.2.300
   CUDA Architecture: 5.3
 OpenCV version: 4.5.0
   OpenCV Cuda: YES
 CUDNN: NOT_INSTALLED
 TensorRT: NOT_INSTALLED
 Vision Works: NOT_INSTALLED
 VPI: NOT_INSTALLED
 Vulcan: 1.2.70
