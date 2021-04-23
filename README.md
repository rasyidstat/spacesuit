# spacesuit

## Overview

### Training

* 86 images
* 13 videos
* 6682 videos frames

### Testing

* 84 images
* 8 videos
* 2577 videos frames

### Scoring

* Segmentation (S2): F-score
* 2D pose estimation (J2): RMSE (max ERR: 100 pixels)
* 3D pose estimation (J3): RMSE 

## Environment

```
conda create -n detector python=3.8
conda activate detector
conda install --name detector ipykernel -y
pip install -r requirement.txt
```

## Visualizer

```
java -Xmx4g -jar data/_others/visualizer/visualizer.jar -image-dir data/raw/train/images/ -video-dir data/raw/train/videos-frames/ -truth2d data/raw/train/images/annotations/truth2d.txt -solution2d data/raw/train/images/annotations/truth2d.txt -truth3d data/raw/train/videos/annotations -solution3d data/raw/train/videos/annotations
```

## Steps

* [x] Convert ground truth to COCO format
* [x] Basic EDA: check image, annotation
* [ ] Upsampling: crop the segmentation, place it in different background
* [ ] Upsampling: TTA, flip, rotate, resize

## Requirements

```
pip install pycocotools
pip install scikit-image
pip install opencv-python
pip install torch torchvision
# Detectron2   
CC=clang CXX=clang++ ARCHFLAGS="-arch x86_64" python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
```

## References

* https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch
* https://github.com/Daniil-Osokin/lightweight-human-pose-estimation-3d-demo.pytorch
* https://github.com/CMU-Perceptual-Computing-Lab/openpose
* https://github.com/leoxiaobin/deep-high-resolution-net.pytorch
* https://www.programmersought.com/article/76453652970/
* https://towardsdatascience.com/self-supervised-keypoint-learning-aade18081fc3
* https://medium.com/@hirotoschwert/digging-into-detectron-2-47b2e794fabd
* [Train on Custom COCO Dataset](https://medium.com/@mdagdelen/detectron2-training-on-custom-coco-dataset-b0e8d4b6b3b), [Fix](https://github.com/facebookresearch/detectron2/issues/2609)