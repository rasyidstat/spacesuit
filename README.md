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

* [ ] Convert ground truth to COCO format
* [ ] Basic EDA: check image, annotation
* [ ] Upsampling: crop the segmentation, place it in different background
* [ ] Upsampling: TTA, flip, rotate, resize