require 'RMagick'

# Set the folder where the images are located
folder = "./podcast_covers"

# Read all the images from the folder
images = Magick::ImageList.new
images.read(folder + "/*.jpg")

# Create a new image with the desired dimensions
mosaic = Magick::Image.new(2048, 2048)

# Calculate the number of rows and columns needed to fit all the images
rows = Math.sqrt(images.length).ceil
columns = (images.length / rows.to_f).ceil

# Resize all the images to fit the mosaic
width = mosaic.columns / columns
height = mosaic.rows / rows
images.each do |image|
  image.resize_to_fill!(width, height)
end

# Create the mosaic by placing the images in a grid
x = y = 0
images.each do |image|
  mosaic.composite!(image, x, y, Magick::OverCompositeOp)
  x += width
  if x >= mosaic.columns
    x = 0
    y += height
  end
end

# Save the mosaic
mosaic.write("mosaic.jpg")
