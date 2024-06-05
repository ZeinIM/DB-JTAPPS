-- Generated by Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   at:        2023-06-14 19:28:13 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE akun_admin (
    id_akunadmin         INTEGER NOT NULL,
    username             VARCHAR(20) NOT NULL,
    kata_sandi           VARCHAR(10) NOT NULL,
    homepage_id_homepage INTEGER NOT NULL
);

CREATE UNIQUE INDEX akun_admin__idx ON
    akun_admin (
        homepage_id_homepage
    ASC );

ALTER TABLE akun_admin ADD CONSTRAINT akun_admin_pk PRIMARY KEY ( id_akunadmin );

CREATE TABLE booking_hotel (
    tanggal_datang             DATE NOT NULL,
    tanggal_keluar             DATE NOT NULL,
    status                     INTEGER NOT NULL,
    user_nomor_telepon         VARCHAR(14) NOT NULL,
    booking_hotel_id           int NOT NULL,
    paket_kamar_paket_kamar_id int NOT NULL
);

ALTER TABLE booking_hotel ADD CONSTRAINT booking_hotel_pk PRIMARY KEY ( booking_hotel_id );


--  ERROR: UK name length exceeds maximum allowed length(30) 
ALTER TABLE booking_hotel ADD CONSTRAINT booking_hotel_user_nomor_telepon_un UNIQUE ( user_nomor_telepon );

CREATE TABLE detail_transaksi (
    transaksi_transaksi_id   int NOT NULL,
    wishlist_wishlist_id     int NOT NULL,
    pengunjung_pengunjung_id int NOT NULL
);

CREATE TABLE detail_wisata (
    wisata_id_wisata                     VARCHAR(10) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    fasilitas_wisata_fasilitas_wisata_id int NOT NULL
);

ALTER TABLE detail_wisata ADD CONSTRAINT detail_wisata_pk PRIMARY KEY ( wisata_id_wisata );

CREATE TABLE faq (
    pertanyaan            text NOT NULL,
    jawaban               TEXT NOT NULL,
    homepage_id_homepage  INTEGER NOT NULL,
    faq_id                INTEGER NOT NULL,
    homepage_id_homepage2 INTEGER NOT NULL
);

CREATE UNIQUE INDEX faq__idx ON
    faq (
        homepage_id_homepage
    ASC );

CREATE UNIQUE INDEX faq__idxv1 ON
    faq (
        homepage_id_homepage2
    ASC );

ALTER TABLE faq ADD CONSTRAINT faq_pk PRIMARY KEY ( faq_id );

CREATE TABLE fasilitas_wisata (
    nama_fasilitas      TEXT NOT NULL,
    fasilitas_wisata_id INTEGER NOT NULL
);

ALTER TABLE fasilitas_wisata ADD CONSTRAINT fasilitas_wisata_pk PRIMARY KEY ( fasilitas_wisata_id );

CREATE TABLE homepage (
    id_homepage                   INTEGER NOT NULL,
    nama_homepage                 TEXT NOT NULL,
    akun_admin_id_akunadmin       INTEGER NOT NULL,
    faq_faq_id                    INTEGER NOT NULL,
    newsletter_newsletter_id      INTEGER NOT NULL,
    voucher_voucher_id            INT NOT NULL,
    image_slider_image_slider_id  INT NOT NULL,
    voucher_voucher_id2           INT NOT NULL,
    faq_faq_id2                   INT NOT NULL,
    newsletter_newsletter_id2     INT NOT NULL,
    image_slider_image_slider_id2 INT NOT NULL
);

CREATE UNIQUE INDEX homepage__idx ON
    homepage (
        faq_faq_id
    ASC );

CREATE UNIQUE INDEX homepage__idxv1 ON
    homepage (
        newsletter_newsletter_id
    ASC );

CREATE UNIQUE INDEX homepage__idxv2 ON
    homepage (
        voucher_voucher_id
    ASC );

CREATE UNIQUE INDEX homepage__idxv3 ON
    homepage (
        image_slider_image_slider_id
    ASC );

CREATE UNIQUE INDEX homepage__idxv4 ON
    homepage (
        akun_admin_id_akunadmin
    ASC );

CREATE UNIQUE INDEX homepage__idxv5 ON
    homepage (
        voucher_voucher_id2
    ASC );

CREATE UNIQUE INDEX homepage__idxv6 ON
    homepage (
        faq_faq_id2
    ASC );

CREATE UNIQUE INDEX homepage__idxv7 ON
    homepage (
        newsletter_newsletter_id2
    ASC );

CREATE UNIQUE INDEX homepage__idxv8 ON
    homepage (
        image_slider_image_slider_id2
    ASC );

ALTER TABLE homepage ADD CONSTRAINT homepage_pk PRIMARY KEY ( id_homepage );

CREATE TABLE image_slider (
    image_slider          BYTEA NOT NULL,
    homepage_id_homepage  INTEGER NOT NULL,
    image_slider_id       INT NOT NULL,
    homepage_id_homepage2 INTEGER NOT NULL
);

CREATE UNIQUE INDEX image_slider__idx ON
    image_slider (
        homepage_id_homepage
    ASC );

CREATE UNIQUE INDEX image_slider__idxv1 ON
    image_slider (
        homepage_id_homepage2
    ASC );

ALTER TABLE image_slider ADD CONSTRAINT image_slider_pk PRIMARY KEY ( image_slider_id );

CREATE TABLE jabatan (
    id_jabatan   VARCHAR(10) NOT NULL,
    nama_jabatan VARCHAR(35) NOT NULL
);

ALTER TABLE jabatan ADD CONSTRAINT jabatan_pk PRIMARY KEY ( id_jabatan );

CREATE TABLE jenis_kamar (
    id_jeniskamar   VARCHAR(5) NOT NULL,
    nama_jeniskamar VARCHAR(20) NOT NULL
);

ALTER TABLE jenis_kamar ADD CONSTRAINT jenis_kamar_pk PRIMARY KEY ( id_jeniskamar );

CREATE TABLE "Kritik_&_Saran" (
    kritik              TEXT,
    saran               TEXT,
    user_nomor_telepon  VARCHAR(14) NOT NULL,
    "Kritik_&_Saran_ID" INT NOT NULL
);

ALTER TABLE "Kritik_&_Saran" ADD CONSTRAINT "Kritik_&_Saran_PK" PRIMARY KEY ( "Kritik_&_Saran_ID" );

CREATE TABLE membership (
    nama_membership VARCHAR(30) NOT NULL,
    membership_id   INT NOT NULL
);

ALTER TABLE membership ADD CONSTRAINT membership_pk PRIMARY KEY ( membership_id );

CREATE TABLE newsletter (
    judul                 TEXT NOT NULL,
    tanggal               DATE NOT NULL,
    link_berita           TEXT NOT NULL,
    homepage_id_homepage  INTEGER NOT NULL,
    deskripsi             TEXT,
    newsletter_id         INT NOT NULL,
    homepage_id_homepage2 INTEGER NOT NULL
);

CREATE UNIQUE INDEX newsletter__idx ON
    newsletter (
        homepage_id_homepage
    ASC );

CREATE UNIQUE INDEX newsletter__idxv1 ON
    newsletter (
        homepage_id_homepage2
    ASC );

ALTER TABLE newsletter ADD CONSTRAINT newsletter_pk PRIMARY KEY ( newsletter_id );

CREATE TABLE paket_kamar (
    nomor_kamar               VARCHAR(5) NOT NULL,
    harga_paket               INT NOT NULL,
    deskripsi_paket           TEXT NOT NULL,
    status                    INTEGER NOT NULL,
    jenis_kamar_id_jeniskamar VARCHAR(5) NOT NULL,
    paket_kamar_id            INT NOT NULL
);

ALTER TABLE paket_kamar ADD CONSTRAINT paket_kamar_pk PRIMARY KEY ( paket_kamar_id );

CREATE TABLE paket_makanan (
    id_paketmakanan   VARCHAR(10) NOT NULL,
    nama_paketmakanan VARCHAR(20) NOT NULL,
    harga             INT NOT NULL,
    deskripsi_paket   TEXT NOT NULL,
    wisata_id_wisata  VARCHAR(10) NOT NULL
);

ALTER TABLE paket_makanan ADD CONSTRAINT paket_makanan_pk PRIMARY KEY ( id_paketmakanan );

CREATE TABLE pengunjung (
    nama_pengunjung VARCHAR(70) NOT NULL,
    tanggal_lahir   DATE NOT NULL,
    domisili        VARCHAR(25) NOT NULL,
    pengunjung_id   INT NOT NULL
);

ALTER TABLE pengunjung ADD CONSTRAINT pengunjung_pk PRIMARY KEY ( pengunjung_id );

CREATE TABLE penilaian (
    review             TEXT NOT NULL,
    rating_tempat      INTEGER NOT NULL,
    rating_kebersihan  INTEGER NOT NULL,
    user_nomor_telepon VARCHAR(14) NOT NULL,
    penilaian_id       INT NOT NULL
);

ALTER TABLE penilaian ADD CONSTRAINT penilaian_pk PRIMARY KEY ( penilaian_id );

CREATE TABLE staff (
    nama_staff         VARCHAR(70) NOT NULL,
    nomor_telepon      VARCHAR(14) NOT NULL,
    email              VARCHAR(50) NOT NULL,
    domisili           VARCHAR(30) NOT NULL,
    hire_date          DATE NOT NULL,
    tanggal_lahir      DATE NOT NULL,
    jabatan_id_jabatan VARCHAR(10) NOT NULL,
    staff_id           INT NOT NULL
);

ALTER TABLE staff ADD CONSTRAINT staff_pk PRIMARY KEY ( staff_id );

ALTER TABLE staff ADD CONSTRAINT staff_nomor_telepon_un UNIQUE ( nomor_telepon );

CREATE TABLE tiket (
    nama_tiket       VARCHAR(50) NOT NULL,
    harga_tiket      INT NOT NULL,
    wisata_id_wisata VARCHAR(10) NOT NULL,
    tiket_id         INT NOT NULL
);

ALTER TABLE tiket ADD CONSTRAINT tiket_pk PRIMARY KEY ( tiket_id );

CREATE TABLE transaksi (
    tgl_transaksi      DATE NOT NULL,
    kuantitas          INTEGER NOT NULL,
    user_nomor_telepon VARCHAR(14) NOT NULL,
    transaksi_id       INT NOT NULL,
    voucher_voucher_id INT NOT NULL
);

ALTER TABLE transaksi ADD CONSTRAINT transaksi_pk PRIMARY KEY ( transaksi_id );

CREATE TABLE umkm (
    nama_umkm              VARCHAR(30) NOT NULL,
    nama_pemilik           VARCHAR(70) NOT NULL,
    contact_person         VARCHAR(14) NOT NULL,
    menu                   BYTEA NOT NULL,
    lokasi                 TEXT NOT NULL,
    deskripsi              TEXT NOT NULL,
    umkm_id                INT NOT NULL,
    penilaian_penilaian_id INT NOT NULL
);

ALTER TABLE umkm ADD CONSTRAINT umkm_pk PRIMARY KEY ( umkm_id );

CREATE TABLE "User" (
    nama_lengkap             VARCHAR(70) NOT NULL,
    username                 VARCHAR(25) NOT NULL,
    email                    VARCHAR(50) NOT NULL,
    kata_sandi               VARCHAR(12) NOT NULL,
    nomor_telepon            VARCHAR(14) NOT NULL,
    kota                     VARCHAR(25) NOT NULL,
    provinsi                 VARCHAR(25) NOT NULL,
    poin                     INTEGER NOT NULL,
    status                   INTEGER NOT NULL,
    user_id                  INT NOT NULL,
    membership_membership_id INT NOT NULL
);

ALTER TABLE "User" ADD CONSTRAINT user_pk PRIMARY KEY ( user_id );

ALTER TABLE "User" ADD CONSTRAINT user_nomor_telepon_un UNIQUE ( nomor_telepon );

CREATE TABLE voucher (
    deskripsi             TEXT NOT NULL,
    homepage_id_homepage  INTEGER NOT NULL,
    harga_voucher         INTEGER NOT NULL,
    voucher_id            INT NOT NULL,
    homepage_id_homepage2 INTEGER NOT NULL
);

CREATE UNIQUE INDEX voucher__idx ON
    voucher (
        homepage_id_homepage
    ASC );

CREATE UNIQUE INDEX voucher__idxv1 ON
    voucher (
        homepage_id_homepage2
    ASC );

ALTER TABLE voucher ADD CONSTRAINT voucher_pk PRIMARY KEY ( voucher_id );

CREATE TABLE wisata (
    id_wisata              VARCHAR(10) NOT NULL,
    nama_wisata            VARCHAR(40) NOT NULL,
    deskripsi_wisata       TEXT NOT NULL,
    alamat_wisata          TEXT NOT NULL,
    penilaian_penilaian_id INT NOT NULL
);

ALTER TABLE wisata ADD CONSTRAINT wisata_pk PRIMARY KEY ( id_wisata );

CREATE TABLE wishlist (
    wishlist_id INT NOT NULL
);

ALTER TABLE wishlist ADD CONSTRAINT wishlist_pk PRIMARY KEY ( wishlist_id );

ALTER TABLE booking_hotel
    ADD CONSTRAINT booking_hotel_paket_kamar_fk FOREIGN KEY ( paket_kamar_paket_kamar_id )
        REFERENCES paket_kamar ( paket_kamar_id );

ALTER TABLE booking_hotel
    ADD CONSTRAINT booking_hotel_user_fk FOREIGN KEY ( user_nomor_telepon )
        REFERENCES "User" ( nomor_telepon );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_pengunjung_fk FOREIGN KEY ( pengunjung_pengunjung_id )
        REFERENCES pengunjung ( pengunjung_id );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_transaksi_fk FOREIGN KEY ( transaksi_transaksi_id )
        REFERENCES transaksi ( transaksi_id );

ALTER TABLE detail_transaksi
    ADD CONSTRAINT detail_transaksi_wishlist_fk FOREIGN KEY ( wishlist_wishlist_id )
        REFERENCES wishlist ( wishlist_id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE detail_wisata
    ADD CONSTRAINT detail_wisata_fasilitas_wisata_fk FOREIGN KEY ( fasilitas_wisata_fasilitas_wisata_id )
        REFERENCES fasilitas_wisata ( fasilitas_wisata_id );

ALTER TABLE detail_wisata
    ADD CONSTRAINT detail_wisata_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE faq
    ADD CONSTRAINT faq_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE faq
    ADD CONSTRAINT faq_homepage_fkv2 FOREIGN KEY ( homepage_id_homepage2 )
        REFERENCES homepage ( id_homepage );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_faq_fk FOREIGN KEY ( faq_faq_id )
        REFERENCES faq ( faq_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_faq_fkv2 FOREIGN KEY ( faq_faq_id2 )
        REFERENCES faq ( faq_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_image_slider_fk FOREIGN KEY ( image_slider_image_slider_id )
        REFERENCES image_slider ( image_slider_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_image_slider_fkv2 FOREIGN KEY ( image_slider_image_slider_id2 )
        REFERENCES image_slider ( image_slider_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_newsletter_fk FOREIGN KEY ( newsletter_newsletter_id )
        REFERENCES newsletter ( newsletter_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_newsletter_fkv2 FOREIGN KEY ( newsletter_newsletter_id2 )
        REFERENCES newsletter ( newsletter_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_voucher_fk FOREIGN KEY ( voucher_voucher_id )
        REFERENCES voucher ( voucher_id );

ALTER TABLE homepage
    ADD CONSTRAINT homepage_voucher_fkv2 FOREIGN KEY ( voucher_voucher_id2 )
        REFERENCES voucher ( voucher_id );

ALTER TABLE image_slider
    ADD CONSTRAINT image_slider_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE image_slider
    ADD CONSTRAINT image_slider_homepage_fkv2 FOREIGN KEY ( homepage_id_homepage2 )
        REFERENCES homepage ( id_homepage );

ALTER TABLE "Kritik_&_Saran"
    ADD CONSTRAINT "Kritik_&_Saran_User_FK" FOREIGN KEY ( user_nomor_telepon )
        REFERENCES "User" ( nomor_telepon );

ALTER TABLE newsletter
    ADD CONSTRAINT newsletter_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE newsletter
    ADD CONSTRAINT newsletter_homepage_fkv2 FOREIGN KEY ( homepage_id_homepage2 )
        REFERENCES homepage ( id_homepage );

ALTER TABLE paket_kamar
    ADD CONSTRAINT paket_kamar_jenis_kamar_fk FOREIGN KEY ( jenis_kamar_id_jeniskamar )
        REFERENCES jenis_kamar ( id_jeniskamar );

ALTER TABLE paket_makanan
    ADD CONSTRAINT paket_makanan_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE penilaian
    ADD CONSTRAINT penilaian_user_fk FOREIGN KEY ( user_nomor_telepon )
        REFERENCES "User" ( nomor_telepon );

ALTER TABLE staff
    ADD CONSTRAINT staff_jabatan_fk FOREIGN KEY ( jabatan_id_jabatan )
        REFERENCES jabatan ( id_jabatan );

ALTER TABLE tiket
    ADD CONSTRAINT tiket_wisata_fk FOREIGN KEY ( wisata_id_wisata )
        REFERENCES wisata ( id_wisata );

ALTER TABLE transaksi
    ADD CONSTRAINT transaksi_user_fk FOREIGN KEY ( user_nomor_telepon )
        REFERENCES "User" ( nomor_telepon );

ALTER TABLE transaksi
    ADD CONSTRAINT transaksi_voucher_fk FOREIGN KEY ( voucher_voucher_id )
        REFERENCES voucher ( voucher_id );

ALTER TABLE umkm
    ADD CONSTRAINT umkm_penilaian_fk FOREIGN KEY ( penilaian_penilaian_id )
        REFERENCES penilaian ( penilaian_id );

ALTER TABLE "User"
    ADD CONSTRAINT user_membership_fk FOREIGN KEY ( membership_membership_id )
        REFERENCES membership ( membership_id );

ALTER TABLE voucher
    ADD CONSTRAINT voucher_homepage_fk FOREIGN KEY ( homepage_id_homepage )
        REFERENCES homepage ( id_homepage );

ALTER TABLE voucher
    ADD CONSTRAINT voucher_homepage_fkv2 FOREIGN KEY ( homepage_id_homepage2 )
        REFERENCES homepage ( id_homepage );

ALTER TABLE wisata
    ADD CONSTRAINT wisata_penilaian_fk FOREIGN KEY ( penilaian_penilaian_id )
        REFERENCES penilaian ( penilaian_id );





-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            25
-- CREATE INDEX                            18
-- ALTER TABLE                             61
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          17
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         17
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   3
-- WARNINGS                                 0
