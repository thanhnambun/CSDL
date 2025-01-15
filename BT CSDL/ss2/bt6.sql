use test1;
insert into NhanVien(MaNV,HoTen,NgayVaolam,Luong)
values 
(1,'nam','2008-01-16',5000),
(2,'nam1','2008-01-16',6000),
(3,'nam2','2000-01-16',7000);
SELECT * FROM NhanVien;
update NhanVien
set Luong = 7000
where MaNV =1 ;

delete from  NhanVien
where MaNV =3;