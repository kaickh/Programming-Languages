!written by: Kai Khasu Homework 4 Assignment

PROGRAM myprog
  implicit none !standard

  !variable declarations: counter(n), array size, vectors 1 and 2
  integer :: arr_size, n = 1
  real, dimension(:), allocatable :: vec1, vec2
  real, external :: DOT

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

END PROGRAM myprog

real function DOT(var1, var2, arr_size) result(prod)
  implicit none !standard

  !variable declaration
  integer :: count,
  real :: elem1, elem2

  DOT =
  return
end function DOT
