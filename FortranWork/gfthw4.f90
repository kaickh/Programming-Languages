!written by: Kai Khasu Homework 4 Assignment

program gfthw4
  implicit none

  integer :: n, x, arr_size
  real, dimension(:), allocatable :: vec1, vec2

  read *, arr_size
  allocate(vec1(1:arr_size))
  allocate(vec2(1:arr_size))

  read *, (vec1(n), n=1,arr_size)
  print *, ("Vector 1 consists of: ")
  print *, (vec1(n), n=1,arr_size)

  print *, ("Vector 2 consists of: ")
  read *, (vec2(n), n=1,arr_size)
  print *, (vec2(n), n=1,arr_size)



end program gfthw4
