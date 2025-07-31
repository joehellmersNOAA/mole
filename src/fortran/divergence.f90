module divergence
    implicit none

    real :: i = 1.33

contains
    real function get_i()
        get_i = i
    end function get_i
end module divergence