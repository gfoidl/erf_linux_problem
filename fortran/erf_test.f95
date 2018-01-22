program erf_test
    implicit none
    integer, parameter  :: seed = 42, N = 1000000000
    integer             :: i, k
    real(8)             :: start, finish
    real(8)             :: x, erf1, y1, y

    call srand(seed)
    x = rand()

    do k = 1, 3
        call cpu_time(start)
        do i = 1, N
            y1 = y1 + erf1(x)
        end do
        call cpu_time(finish)
        print *, 'erf1: ', finish - start

        call cpu_time(start)
        do i = 1, N
            y = y + erf(x)
        end do
        call cpu_time(finish)
        print *, 'erf:  ', finish - start

        print *
        print *, 'y1: ', y1
        print *, 'y:  ', y
        print *
    end do
end program erf_test
!------------------------------------------------------------------------------
real(8) function erf1(x)
    implicit none
    real(8)             :: x
    real(8), parameter  :: a1 = 0.254829592
    real(8), parameter  :: a2 = -0.284496736
    real(8), parameter  :: a3 = 1.421413741
    real(8), parameter  :: a4 = -1.453152027
    real(8), parameter  :: a5 = 1.061405429
    real(8), parameter  :: p  = 0.3275911
    integer             :: sgn
    real(8)             :: t, y

    sgn = sign(1d0, x)
    x = abs(x)
    x = 0.50

    t = 1d0 / (1d0 + p * x)
    y = 1d0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * exp(-x * x)

    erf1 = sgn * y
end function erf1