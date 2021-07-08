
from PIL import Image
 
filename = r'test.png'
img = Image.open(filename)
img_array=img.load()
imgSize = img.size 
print (imgSize)
maxSize = max(imgSize) 
 
minSize = min(imgSize) 
print(maxSize, minSize)

print(img_array[0, 0])

f = open('./array_test.txt','w')
for i in range(minSize):
	for j in range(maxSize):
		f.write(str(i)    + ','  + str(j)  + ','  + str(img_array[j, i]) + '\n')


