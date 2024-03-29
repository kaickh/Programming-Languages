!written by: Kai Khasu Homework 4 Assignment
!this program takes any integer. this integer determines the size
!of the vectors which will be used.
!then this program takes two vectors of the same length and calculates the angle between them
!ex:
!3
! 1 1 1
! 2 1 0

    PROGRAM myprog
    implicit none !standard

!variable declarations: counter(n), array size, vectors 1 and 2
    integer :: arr_size, n = 1
    real :: numer, length1, length2, aoli, PI, Master_Degree
    real, dimension(:), allocatable :: vec1, vec2
    real, external :: DOT, LENG
!reads in vector size and allocates 2 vectors
    read *, arr_size
    allocate(vec1(1:arr_size))
    allocate(vec2(1:arr_size))

!reads in first vector values
    read *, (vec1(n), n=1,arr_size)
    print *, ("Vector 1 : ")
    print *, (vec1(n), n=1,arr_size)
!reads in second vector values
    print *, ("Vector 2 : ")
    read *, (vec2(n), n=1,arr_size)
    print *, (vec2(n), n=1,arr_size)

!Calculates the dot product of two vectors
    numer = DOT(vec1, vec2, arr_size)
    print *,'Dot prouct =  ', numer

!runs the LENG function on a vector
    length1 = LENG(vec1, arr_size)
    print *,'Length of vector 1 = ', LENG(vec1, arr_size)
    length2 = LENG(vec2, arr_size)
    print *,'length of vector 2 = ', LENG(vec2, arr_size)

!calculates the angle using ACOS infunction! - Radians
    aoli = ACOS( numer  /  (length1 * length2))
    print *,'Angle (radians) = ', aoli

!calculates the angle in degrees
    PI = 3.14159
    Master_Degree = (aoli * 180 / PI)
    print *,'Angle (degrees) =  ', Master_Degree
    END PROGRAM myprog

!DOT : vector vector integer -> real
!calculates the dot product of two vectors
    real function DOT(var1, var2, arr_size) result(prod)
    implicit none !standard

!variable declaration
    integer :: arr_size,  i = 0
    real, dimension(1:arr_size) :: var1, var2

!DOT algorithm
    do 10 i = 1, arr_size
    prod = prod + var1(i) * var2(i)
    10 continue
    RETURN
    end function DOT

!LENG : vector integer -> real
!returns the length of a single vector
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
