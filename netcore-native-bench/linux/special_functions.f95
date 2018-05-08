real(8) function gaussian_error_function(x) result(y)
    implicit none
    real(8), intent(in)     :: x
    !--------------------------------------------------------------------------
    y = erf(x)
end function gaussian_error_function
!------------------------------------------------------------------------------
real(8) function gaussian_error_function_complementary(x) result(y)
    implicit none
    real(8), intent(in)     :: x
    !--------------------------------------------------------------------------
    y = erfc(x)
end function gaussian_error_function_complementary
!------------------------------------------------------------------------------
subroutine gaussian_error_function_vector(x, y, n)
    implicit none
    integer, value, intent(in)          :: n
    real(8), dimension(n), intent(in)   :: x
    real(8), dimension(n), intent(out)  :: y
    !--------------------------------------------------------------------------
    y = erf(x)
end subroutine gaussian_error_function_vector
!------------------------------------------------------------------------------
subroutine gaussian_error_function_complementary_vector(x, y, n)
    implicit none
    integer, value, intent(in)          :: n
    real(8), dimension(n), intent(in)   :: x
    real(8), dimension(n), intent(out)  :: y
    !--------------------------------------------------------------------------
    y = erfc(x)
end subroutine gaussian_error_function_complementary_vector
