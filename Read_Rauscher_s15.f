      program readrauscher

      implicit none
      integer ns, i, a,b,c,d,u
      parameter (ns=652, a=15, b=20, c=25, d=30, u=40)
      real allofthem(305)
      real zo(ns), m(ns), zm(ns), h1(ns), he4(ns), c12(ns), n14(ns)
      real o16(ns), ne20(ns), na22(ns), mg24(ns), al26(ns), si28(ns)
      real p30(ns), s32(ns), ar36(ns), ca40(ns)
      real ti44(ns), fe56(ns), co56(ns), ni56(ns), cu58(ns)

c  Open the data file
      open(u, FILE='s15a27c-1.expl_comp', STATUS='OLD')
      open(a, FILE='s15abund1_16.dat', STATUS='NEW')
      open(b, FILE='s15abund20_28.dat', STATUS='NEW')
      open(c, FILE='s15abund30_44.dat', STATUS='NEW')
      open(d, FILE='s15abund56_58.dat', STATUS='NEW')

      write(a,'(A)') '#m h1 he4 c12 n14 o16'
      write(b,'(A)') '#m ne20 na22 mg24 al26 si28'
      write(c,'(A)') '#m p30 s32 ar36 ca40 ti44'
      write(d,'(A)') '#m fe56 co56 ni56 cu58'

c  Read the first line
      read(u,*)
c  Loop over the data points
      do 10 i= 1, ns
         read(u,*) allofthem

         zo(i)=allofthem(1)
         m(i)=allofthem(2)
         zm(i)=allofthem(3)
         h1(i)=allofthem(5)
         he4(i)=allofthem(9)
         c12(i)=allofthem(25)
         n14(i)=allofthem(32)
         o16(i)=allofthem(38)
         ne20(i)=allofthem(54)
         na22(i)=allofthem(65)
         mg24(i)=allofthem(76)
         al26(i)=allofthem(88)
         si28(i)=allofthem(98)
         p30(i)=allofthem(108)
         s32(i)=allofthem(119)
         ar36(i)=allofthem(142)
         ca40(i)=allofthem(169)
         ti44(i)=allofthem(196)
         fe56(i)=allofthem(254)
         co56(i)=allofthem(266)
         ni56(i)=allofthem(277)
         cu58(i)=allofthem(294)

c         print*, m(i), h1(i), he4(i)
c         print*, m(i), c12(i), n14(i)
c         print*, m(i), o16(i), ne20(i)
c         print*, m(i), na22(i), mg24(i)
c         print*, m(i), al26(i), si28(i)
c         print*, m(i), p30(i), s32(i)
c         print*, m(i), cl34(i), ar36(i)
c         print*, m(i), k38(i), ca40(i)
c         print*, m(i), ti44(i), fe56(i)
c         print*, m(i), co56(i), ni56(i)
c         print*, m(i), cu58(i), zn60(i)

         write(a,100) m(i), h1(i), he4(i), c12(i), n14(i), o16(i)
         write(b,100) m(i), ne20(i), na22(i), mg24(i), al26(i), si28(i)
         write(c,100) m(i), p30(i), s32(i), ar36(i), ca40(i), ti44(i)
         write(d,110) m(i), fe56(i), co56(i), ni56(i), cu58(i)

 10   continue
 100  format (X, 6(E12.5, 2X))
 110  format(X, 5(E12.5, 2X))

      close (a)
      close (b)
      close (c)
      close (d)
      close(u)
 
      end program readrauscher
