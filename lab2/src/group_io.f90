
module Group_IO
   use Environment

   implicit none
   integer, parameter :: PEOPLE_AMOUNT = 8
   integer, parameter :: SURNAME_LEN   = 15
   integer, parameter :: INITIALS_LEN  = 5

   ! Структура данных для хранения данных о студенте.
   !type student
   !   character(SURNAME_LEN, kind=CH_)    :: Surname              = ""
   !   character(INITIALS_LEN, kind=CH_)   :: Initials             = ""
   !   character(kind=CH_)                 :: Sex                  = ""
   !   integer(I_)                         :: Marks(MARKS_AMOUNT)  = 0
   !   real(R_)                            :: Aver_mark            = 0
   !end type student
   
contains
   ! Создание неформатированного файла данных.
   !subroutine Create_data_file(Input_File, Data_File)
   !   character(*), intent(in)   :: Input_File, data_file
   !   
   !   type(student)              :: stud
   !   integer                    :: In, Out, IO, i, recl
   !   character(:), allocatable  :: format
   !   "Исходный список:", "rewind")   !Читаем файл
   !   
   !   open (file=Input_File, encoding=E_, newunit=In)
   !   recl = (SURNAME_LEN + INITIALS_LEN + 1)*CH_ + MARKS_AMOUNT*I_ + R_
   !   open (file=Data_File, form='unformatted', newunit=Out, access='direct', recl=recl)
   !      format = '(3(a, 1x), ' // MARKS_AMOUNT // 'i1, f5.2)'
   !      do i = 1, STUD_AMOUNT
   !         read (In, format, iostat=IO) stud
   !         ! Можно явно указывать поля в записи при чтении (не рекомендуется):
   !         !read (In, format, iostat=IO) stud%Surname, stud%Initials, stud%Sex, &
   !         !   stud%Marks, stud%Aver_mark
   !         call Handle_IO_status(IO, "reading formatted class list, line " // i)
   !         
   !         write (Out, iostat=IO, rec=i) stud
   !         call Handle_IO_status(IO, "creating unformatted file with class list, record " // i)
   !      end do
   !   close (In)
   !   close (Out)
   !end subroutine Create_data_file


  ! Чтение списка класса: фамилии, инициалы, полы, регистрация и средний.
   subroutine Read_people_list(Input_File, Surnames, Initials, Genders, Registration, Aver_Marks)
      character(*)         Input_File
      character(kind=CH_)  Surnames(:, :), Initials(:, :), Genders(:), Registration(:)
      real(R_)             Aver_Marks(:)
      intent (in)          Input_File
      intent (out)         Surnames, Initials, Genders, Registration, Aver_Marks

      integer In, IO, i
      character(:), allocatable  :: format

      open (file=Input_File, encoding=E_, newunit=In)
         format = '('//SURNAME_LEN//'a1, 1x, ' // INITIALS_LEN // 'a1, 1x, a, 1x, a, 1x, f5.2)'
         read (In, format, iostat=IO) (Surnames(:, i), Initials(:, i), Genders(i), Registration(i), Aver_Marks(i), &
            i = 1, PEOPLE_AMOUNT)
         call Handle_IO_status(IO, "reading class list")
      close (In)
   end subroutine Read_people_list




   ! Чтение списка класса: фамилии, инициалы, полы и оценки.
  ! function Read_people_list(Data_File) result(Group)
   !   type(student)                 Group(STUD_AMOUNT)
   !   character(*), intent(in)   :: Data_File

   !   integer In, IO, recl
      
   !   recl = ((SURNAME_LEN + INITIALS_LEN + 1)*CH_ + MARKS_AMOUNT*I_ + R_) * STUD_AMOUNT
   !   open (file=Data_File, form='unformatted', newunit=In, access='direct', recl=recl)
   !      read (In, iostat=IO, rec=1) Group
   !      call Handle_IO_status(IO, "reading unformatted class list")
   !   close (In)
   !end function Read_class_list
 


   ! Вывод списка класса.
   subroutine Output_people_list(Output_File, Surnames, Initials, Genders, Registration, Aver_Marks, List_name, Position)
      character(*)         Output_File, Position, List_name
      character(kind=CH_)  Surnames(:, :), Initials(:, :), Genders(:), Registration(:)
      real(R_)             Aver_Marks(:)
      intent (in)          Output_File, Surnames, Initials, Genders, Registration, Aver_Marks, List_name, Position

      integer                    :: Out, i, IO
      character(:), allocatable  :: format

      open (file=output_file, encoding=E_, position=position, newunit=Out)
         write (out, '(/a)') List_name
         format = '(' // SURNAME_LEN // 'a1, 1x, ' // INITIALS_LEN // 'a1, 1x, a, 1x, a, 1x, f5.2)'
         write (Out, format, iostat=IO) &
            (Surnames(:, i), Initials(:, i), Genders(i), Registration(i), Aver_Marks(i), i = 1, UBound(Aver_Marks, 1))
         call Handle_IO_status(IO, "writing " // List_name)
      close (Out)
   end subroutine Output_people_list

  ! subroutine arayoutput(array, SymbLength)
  !   character(kind=CH_) :: Array(SymbolLength)
  !   intent inout Array

  !   character(kind=CH_) :: Arraytmp(SymbolLength)

  !   Arraytmp = pack()
  ! end subroutine arrayoutput   
   ! Вывод списка класса.
   !subroutine Output_class_list(Output_File, Group, List_name, Position)
   !   character(*), intent(in)   :: Output_File, Position, List_name
   !   type(student), intent(in)  :: Group(:)

   !   integer                    :: Out, IO
   !   character(:), allocatable  :: format
      
   !   open (file=Output_File, encoding=E_, position=Position, newunit=Out)
   !      write (out, '(/a)') List_name
   !      format = '(3(a, 1x), ' // MARKS_AMOUNT // 'i1, f5.2)'
   !      write (Out, format, iostat=IO) Group
   !      call Handle_IO_status(IO, "writing " // List_name)
   !   close (Out)
   !end subroutine Output_class_list
end module Group_IO 
