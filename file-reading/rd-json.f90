program read_json

    use :: json_module

    implicit none

    ! ----- Variable definitions ---------------
    type(json_file) :: json
    real(8), allocatable, dimension(:) :: energy,xs
    logical :: is_found
    integer(4) :: i
    ! ------------------------------------------

    call json%initialize()

    ! ----- read the json file and load --------
    call json%load(filename='inp.json')
    call json%get("energy", energy, is_found); if( .not. is_found ) stop
    call json%get("xs",         xs, is_found); if( .not. is_found ) stop

    print *, "Hey, data:"
    do i=1,5
        print *, "At index: ", i, " ", energy(i), " ",xs(i)
    end do

    call json%destroy()
    
end program read_json