program head
  implicit none

  integer :: arr_size, n = 1, i
  real, dimension(:), allocatable :: vec1, vec2
  real :: value, length

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

  !this takes care of the dot product logic
  !not sure the propper way to do the do loop tho
  value = 0
  do 10 i = 1, arr_size
    value = value + vec1(i) * vec2(i)
 10  continue
 print *,'dot value is ', value

 !this will tackle the length function logic
 length = 0
 do 20 i = 1, arr_size
   !will be for vec 1 and vec 2
   length = length + vec1(i) * vec1(i)
20   continue
length = SQRT(length)
print *,'length is ', length

end program head
