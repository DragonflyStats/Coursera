## Images

Only a few decades ago, analyzing a large dataset of images was not feasible for most researchers. Many didn’t even think of images as data. But, there is so much we can get from analyzing image data. Although we will not study images processing techniques in this lesson, let’s look at one example that gives us an idea of how image data can be used.

Within Google Maps there is a Street View feature that allows panoramic views from positions along many streets in the world. One of the things you may notice if you’re looking around on Google Maps’ street view is that for many streets in the world you do not only see houses; you are also able to see cars.

*Figure: Google Maps street view*

Some 50 million images of cars from over 200 cities were used by researchers to detect the make, model, body type, and age of the cars in each neighborhood. They were able to take unstructured image data and compile a structured dataset! These same researchers then pulled together a structured dataset from the Census and the 2008 elections of demographic information (such as race and income), and voting history in these same neighborhoods.

*Figure: Data used from Google Maps street view to predict demographics of a neighborhood*

Using these two datasets (the Google Street view car image data and the demographic data), researchers used a technique known as machine learning to build an algorithm that could, from the images of cars in a neighborhood, predict the demographics (race, income, etc) and how that area is likely to vote. Comparing these two sets of data, they were able to accurately estimate income, race, education, and voting patterns at the zip code level from the Google Street view images.

*Figure: Cars in a neighborhood can predict how the area votes*

### Reading Images in R

Like with text, there are packages in R that will help you carry out analysis of images. In particular, `magick` is particularly helpful for advanced image processing within R, allowing you to process, edit, and manipulate images within R. Like JSON and XML, where there is more than one file format for a similar task, there are also a number of different image file formats. The `magick` package is capable of working with many different types of images, including PNG, JPEG, and TIFF. The `magick` package has a particularly helpful vignette where you can learn the ins and outs of working with images using `magick`’s functionality. Their documentation will discuss how to read image data into R, how to edit images, and even how to add images to your R plots!

*magick package’s example of adding an image to a plot*

A really useful manipulation that one can perform is text extraction from images. Typically this works best with images that have text, where the text is not angled and is in a conventional font.

We will show how to do this using a couple of tidyverse package hex stickers. This will involve using the `image_read()` function to import the image and the `image_ocr()` function to extract the text.

```r
# install package
#install.packages("magick")

# load package
library(magick)
## Linking to ImageMagick 6.9.9.39
## Enabled features: cairo, fontconfig, freetype, lcms, pango, rsvg, webp
## Disabled features: fftw, ghostscript, x11

img1 <- image_read("https://ggplot2.tidyverse.org/logo.png")
img2 <- image_read("https://pbs.twimg.com/media/D5bccHZWkAQuPqS.png")

# show the image
print(img2)
## # A tibble: 1 x 7
##   format width height colorspace matte filesize density
##   <chr>  <int>  <int> <chr>      <lgl>    <int> <chr>
## 1 PNG      864    864 sRGB       TRUE     54056 72x72

# concatenate and print text
cat(image_ocr(img1))
## ggplot2
cat(image_ocr(img2))
## parsnip
```

Great! We extracted the text!
