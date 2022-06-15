create database mo_hinh_quan_he ;
use mo_hinh_quan_he ;

create table phieu_xuat (
SoPX int primary key,
NgayXuat date 
);

create table vat_tu (
MaVTU int primary key ,
TenVTU varchar(30)
) ;

create table chi_tiet_phieu_xuat (
DGXuat int ,
SLXuat int ,
SoPX int ,
MaVTU int ,
primary key (SoPX , MaVTU) ,
foreign key (SoPX) references phieu_xuat(SoPX) ,
foreign key (MaVTU) references vat_tu(MaVTU)
);


create table phieu_nhap (
SoPN int auto_increment primary key,
NgayNhap date
);

create table chi_tiet_phieu_nhap (
DGNhap int ,
SLNhap int ,
SoPN int ,
MaVTU int ,
primary key (SoPN , MaVTU) ,
foreign key (SoPN) references phieu_nhap(SoPN) ,
foreign key (MaVTU) references vat_tu(MaVTU)
) ;

create table don_dh (
SoDH int primary key ,
NgayDH date
);

create table chi_tiet_don_dh (
MaVTU int ,
SoDH int ,
primary key (MaVTU , SoDH) ,
foreign key (MaVTU) references vat_tu(MaVTU) ,
foreign key (SoDH) references don_dh(SoDH)
);

create table nha_cc (
MaNCC int primary key ,
TenNCC varchar(20),
DiaChi varchar(20) ,
SDT int
);

create table cung_cap (
MaNCC int ,
SoDH int ,
primary key (MaNCC , SoDH) ,
foreign key (MaNCC) references nha_cc(MaNCC),
foreign key (SoDH) references don_dh(SoDH)
) ;