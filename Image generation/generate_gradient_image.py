import numpy
from PIL import Image
from numpy import *


def main():
    row_gradient_array = create_row_gradient_array(256, 1)
    row_im = Image.fromarray(row_gradient_array)
    row_im.save("rows.png")

    column_gradient_array = create_column_gradient_array(256, 1)
    column_im = Image.fromarray(column_gradient_array)
    column_im.save("columns.png")


def create_row_gradient_array(image_size: int, color_rgb: int): # color_rgb must be 0...2 representing RGB
    gradient_array = numpy.zeros(shape=(image_size, image_size, 3))
    for row in range(image_size):
        for column in range(image_size):
            gradient_array[row, column, color_rgb] = float(row)/image_size * 255

    return gradient_array.astype(numpy.uint8)


def create_column_gradient_array(image_size: int, color_rgb: int): # color_rgb must be 0...2 representing RGB
    gradient_array = numpy.zeros(shape=(image_size, image_size, 3))
    for row in range(image_size):
        for column in range(image_size):
            gradient_array[row, column, color_rgb] = float(column)/image_size * 255

    return gradient_array.astype(numpy.uint8)


if __name__ == '__main__':
    main()
