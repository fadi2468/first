from PIL import Image
import albumentations  as A 
import matplotlib.pyplot as plt
import numpy as np
import os
import imutils.paths as paths

input_dir="input"
out_dir= "output"
images_paths=list(paths.list_images(input_dir))
os.makedirs(out_dir,exist_ok=True)
center_crop=A.CenterCrop(height=200,width=300,always_apply=True)
for image_path in images_paths:
  image= Image.open(image_path)
  image_arr=np.array(image)
  cropped_image=center_crop(image=image_arr)['image']
  image_object=Image.fromarray(cropped_image)
  image_name=os.path.basename(image_path)
  final_path=os.path.join(out_dir,image_name)
  image_object.save(final_path)
  plt.figure(figsize=(10,10))
  plt.subplot(1,2,1)
  plt.imshow(image_object)
  plt.subplot(1,2,2)
  image=image.convert('L')
  plt.imshow(image)
  plt.show()
print(image.size)
print(image.mode)
print(image.format)
