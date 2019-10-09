import numpy
import math

a1 = [2,2,0]
c1 = [1,1,-1]

dots = numpy.dot(a1,c1)
print("dot product = " , numpy.dot(a1,c1))

length1 = math.sqrt(numpy.dot(a1,a1))
print("length of v1 = ", math.sqrt(numpy.dot(a1,a1)))

length2 = math.sqrt(numpy.dot(c1,c1))
print("length of v1 = ", math.sqrt(numpy.dot(c1,c1)))

denom = length1 * length2
print("Len1 * Len2 = ", denom)

garbage_sauce = dots
print("dot / (length * length) = ", dots / denom)
