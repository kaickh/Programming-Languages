!written by: Kai Khasu Homework 4 Assignment

PROGRAM myprog
  implicit none !standard

  !variable declarations: counter(n), array size, vectors 1 and 2
  integer :: arr_size, n = 1
  real :: secret_sauce, length1, length2, aoli, PI, Masters_Degree
  real, dimension(:), allocatable :: vec1, vec2
  real, external :: DOT, LENG

  !reads in vector size and allocates 2 vectors
  read *, arr_size
  allocate(vec1(1:arr_size))
  allocate(vec2(1:arr_size))
  !reads in first vector values
  read *, (vec1(n), n=1,arr_size)
  print *, ("Vector 1 consists of: ")
  print *, (vec1(n), n=1,arr_size)
  !reads in second vector values
  print *, ("Vector 2 consists of: ")
  read *, (vec2(n), n=1,arr_size)
  print *, (vec2(n), n=1,arr_size)

  !figures out how to call a fucking function
  secret_sauce = DOT(vec1, vec2, arr_size)
  print *,"this that secret secret 'DOT for short'", secret_sauce

  !runs the LENG function on a vector
  length1 = LENG(vec1, arr_size)
  print *,"Shake Shac Secret Aoli 'Length for single vector'", LENG(vec1, arr_size)
  length2 = LENG(vec2, arr_size)
  print *,"Make the burger a double 'length of second vector'", LENG(vec2, arr_size)

  !calculates the angle using ACOS infunction! - Radians
  aoli = ACOS( (Dot(vec1, vec2, arr_size))  /  ((LENG(vec1, arr_size)) * (LENG(vec2, arr_size))) )
  print *,"this that good good aoli", aoli

  !calculates the temperature . in degrees
  !PI=4.D0*DATAN(1.D0)
  PI = 3.14159
  Masters_Degree = (aoli * 180 / PI)
  print *,"Final degs are: ", Masters_Degree

END PROGRAM myprog

real function DOT(var1, var2, arr_size) result(prod)
  implicit none !standard

  !variable declaration
  integer :: arr_size,  i = 0
  real :: value = 0
  real, dimension(1:arr_size) :: var1, var2

  !DOT algorithm
  do 10 i = 1, arr_size
    value = value + var1(i) * var2(i)
  10 continue
  prod = value
  RETURN
end function DOT

real function LENG(var1, arr_size) result(length)
  implicit none !standard

  !variable declaration
  integer :: arr_size, i = 0
  real, dimension(1:arr_size) :: var1

  !length algorithm
  do 20 i = 1, arr_size
    length = length + var1(i) * var1(i)
  20 continue
  length = SQRT(length)
  RETURN
end function LENG
