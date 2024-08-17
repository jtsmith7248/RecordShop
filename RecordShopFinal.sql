use master;
--go
--drop database Record
go
create database RecordShop;
go
use RecordShop;
go
--Person Table					--Written By Ethan Weaver
create table Person (
	PersonID		int,
	FirstName		char(15)	Not Null,
	LastName		char(15)	Not Null,
	Address			char(30)	Not Null,
	City			char(30)	Not Null,
	State			char(2)		Not Null default 'MI',
	Zip				char(5)		Not Null,
	Email			varchar(50)	Not Null default 'no email',
	Phone			char(10)	Not Null,
	PersonType		char(10)	Not Null,
	--constraints
	--primary key
	constraint person_personid_pk primary key(PersonID),
	--check
	constraint person_persontype_ck check(PersonType in ('Employee', 'Customer'))
);
go

insert into Person (PersonID, FirstName, LastName, Address, City, State, Zip, Email, Phone, PersonType) 
--Written by Eric Arsenault
values 
--Employees
  (1001, 'Eric', 'Arsenault', '8357 Smethwick', 'Sterling Heights', 'MI', '48312', 'ericarsenault@gmail.com', '5869339292', 'Employee')
, (1002, 'Justin', 'Smith', '233 Mound Rd', 'Sterling Heights', 'MI', '48312', 'justinsmith@gmail.com', '5868289292', 'Employee')
, (1003, 'Sam', 'Sayeg', '5433 Van Dyke Ave', 'Utica', 'MI', '48317', 'samsayeg@gmail.com', '5864869785', 'Employee')
,  ('1004', 'Ethan', 'Weaver', '98672 18 Mile Rd', 'Sterling Heights', 'MI', '48312', 'ethanweaver@gmail.com', '5862254678', 'Employee')
, (1021, 'Professor', 'Jenaway', '99876 Teacher Ave', 'Utica', 'MI', '48317', 'bestteacher@yahoo.com', '5868779999', 'Employee')
, (1022, 'Peter', 'Sammich', '457 Royal Ave', 'Royal Oak', 'MI', '48067', 'sammichplease@gmail.com', '2486656767', 'Employee')
, (1023, 'Katie', 'Schaffer', '09235 Rogers', 'Utica', 'MI', '48317', 'schafferkatie@gmail.com', '5869786644', 'Employee')
, (1024, 'Lauren', 'Fields', '3293', 'Sterling Heights', 'MI', '48312', 'fieldslauren@yahoo.com', '5867322221', 'Employee')
--Customers
, (1005, 'Evan', 'Samuels', '2939 Mary Ann Ave', 'Utica', 'MI', '48317', 'esamuels24@gmail.com', '5867798645', 'Customer')
, (1006, 'Amanda', 'Evans', '6862 Harper Rd', 'Warren', 'MI', '48021', 'amandaevans4541@gmail.com', '2489216998', 'Customer')
, (1007, 'Joe', 'Jeffries', '391 8 Mile Rd', 'Detroit', 'MI', '48127', 'joeisawesome2022@gmail.com', '3139872078', 'Customer')
, (1008, 'Aubrey', 'Rose', '9274 Hixon', 'Rochester', 'MI', '48306', 'aubreyrose@gmail.com', '2487668321', 'Customer')
, (1009, 'Sam', 'David', '92562 Main St', 'Rochester', 'MI', '48306', 'sammyd@gmail.com', '2482120321', 'Customer')
, (1010, 'Elliot', 'Neighbors', '8359 Smethwick', 'Sterling Heights', 'MI', '48312', 'elliotn@aol.com', '5867320999', 'Customer')
, (1011, 'Thomas', 'Bradshaw', '8255 Warwickshire', 'Sterling Heights', 'MI', '48312', 'tbradshaw@aol.com', '2484689788', 'Customer')
, (1012, 'Jeff', 'Rogers', '02333 New Bradford', 'Warren', 'MI', '48021', 'rogerj53@aol.com', '2489422209', 'Customer')
, (1013, 'Mandy', 'Roads', '9292 Smethwick', 'Sterling Heights', 'MI', '48312', 'manydyr@yahoo.com', '5867320999', 'Customer')
, (1014, 'Ron', 'Johnson', '62553 North St', 'Portland', 'OR', '97035', 'ronnyj@gmail.com', '5037320999', 'Customer')
, (1015, 'Tracy', 'Hartz', '2600 Farragut Ave', 'Bremerton', 'WA', '92014', 'chargerssd@@gmail.com', '6193840936', 'Customer')
, (1016, 'Zak', 'Anderson', '22222 Silverado', 'San Diego', 'CA', '48312', 'cdchargers@aol.com', '5867320999', 'Customer')
, (1017, 'Tricia', 'Steffans', '9553 Redwood St', 'Seattle', 'WA', '98101', 'triciastef@aol.com', '3607046666', 'Customer')
, (1018, 'Aron', 'Cruce', '1238 Nancy', 'Rochester', 'MI', '48306', 'cruceac@gmail.com', '5865889777', 'Customer')
, (1019, 'Renee', 'Cruce', '1238 Nancy', 'Rochester', 'MI', '48306', 'crucerc@gmail.com', '5865880999', 'Customer')
, (1020, 'Jerry', 'Hauge', '93942 Farmer St', 'Madison', 'WI', '53558', 'jerryjerry@aol.com', '6085230022', 'Customer')
;
go

--Vendor table					--Written By Ethan Weaver
create table Vendor (
	VendorID		int,
	VendorName		char(100)	Not Null,
	VendorPhone		char(10)	Not Null,
	VendorEmail		varchar(50)	Not Null default 'no email',
	ContactFN		char(15)	Not Null,
	ContactLN		char(15)	Not Null,
	ContactRole		char(30)	Not Null,
	ContactPhone	char(10)	Not Null,
	ContactEmail	varchar(50)	Not Null default 'no email',
	--constraints
	--primary key
	constraint vendor_vendorid_pk primary key(VendorID)
);
go

INSERT INTO VENDOR (VendorID,VendorName,VendorPhone,VendorEmail,ContactFN,ContactLN,ContactRole,ContactPhone,ContactEmail) 
--VENDOR TABLE INSERT STATEMENT WRITTEN BY SAM SAYEG
VALUES 
(1001,'Artist Alliance Recording','3340997866','records@aar.com', 'Abriela','Bond','Sales Rep', '3340997869','abond@aar.com'),
(1002,'Independent Star Records','3340997845','contact@isr.com', 'Leo ','Fritz','Sales Rep', '7785530087','leof@isr.com'),
(1003,'RetroMix Records','7785530087','contact@rmr.net', 'Taelynn ','Thorpe ','Manager', '3340997869','tthrope@rmr.net'),
(1004,'Record Player Label','7785530034','help@rpl.com', 'Joshua','Wilson','Sales Rep', '390997866','jwilson@rjwilsonpl.com'),
(1005,'Beatnik Records','7785530990','contact@beatnikrec.com', 'Tiana','Fuller','CEO', '3340997869','tuller@beatnikrecords.com'),
(1006,'Spot On Records','3340654866','contactus@spotonrecordings.com', 'Fabio','Fontai','General Manager', '7785530087','ffontai@.com'),
(1007,'Record Studio Records','390997866','records@rsr.com', 'Grace','Gross','Sales Rep', '5542211443','ggross@rsr.com'),
(1008,'Red Lightning Records','3340995126','help@rlr.com', 'Natalia','Sanz','Customer Relations Manager', '7785530034','nsanz@rlr.com'),
(1009,'Repro Records','3340997112','contact@reprorecords.com', 'Aaron','Nunez','Sales Rep', '3340997869','anunez@reprorecords.com'),
(1010,'Good Company Records','5542211443','help@gcr.com', 'Zane','Mays','Head of HR', '3340997866','zmays@gcr.com')
;

go
--Genre Table				--Written By Ethan Weaver
create table Genre (
	GenreID				int,
	GenreName			char(15)		Not Null,
	GenreDescription	varchar(255)	Not Null,
	--constraints
	--primary key
	constraint genre_genreid_pk primary key(GenreID)
);
go

--Written By Justin Smith
insert into Genre(GenreID, GenreName, GenreDescription)
values
	(101,'Electronic','Characterized by Electronic Musical Instruments, Dance Music, and Synthetic Production'),
	(102,'Alternative','Characterized By Any Music that Doesnt Quite Fit the Mainstream, Often Defined by Being "Not Pop"'),
	(103,'Punk','Characterized by Being Driven by a Counter-Culture Movement, Aggressive and often Political Lyrics, and influence from the Rock, Folk, and Alternative Genres'),
	(104,'Pop','Characterized by being the Front and Center of Mainstream Music, its Qualities Change with the Culture but are Usually Rooted in the Verse-Chorus Structure'),
	(105,'Country','Characterized by its Roots in Storytelling and Folk Music, Country is Very Culturally "Southern" and based around the Acoustic Guitar, Among Other Instruments'),
	(106,'Hip Hop & R&B','Characterized by Syncopated Drum Rhythms, Rapping, and MCing, Hip Hop & R&B are Many Things- and They Remain A Huge Influence on Other Genres'),
	(107,'Rock','Characterized by its Roots in Rhythm and Blues, Rock Music had its Golden Days in the late 20th Century, and often Revolves Around the Electric Guitar, a 3 Chord Structure, and an Attractive Melody')
;

go
--Artist Table				--Written By Ethan Weaver
create table Artist (
	ArtistID		int,
	ArtistName		char(20)	Not Null,
	--constraints
	--primary key
	constraint artist_artistid_pk primary key(ArtistID)
);
go
--Written By Justin Smith
insert into Artist(ArtistID, ArtistName)
values
	(10001,'Kiss'),
	(10002,'Aerosmith'),
	(10003,'Maroon 5'),
	(10004,'Train'),
	(10005,'The Beatles'),
	(10006,'Fleetwood Mac'),
	(10007,'Taylor Swift'),
	(10008,'Kanye West'),
	(10009,'Panic! At The Disco'),
	(10010,'My Chemical Romance'),
	(10011,'Billie Eilish'),
	(10012,'Madonna'),
	(10013,'Michael Jackson'),
	(10014,'Whitney Houston'),
	(10015,'Rihanna'),
	(10016,'Beyonce'),
	(10017,'The Rolling Stones'),
	(10018,'Prince'),
	(10019,'Drake'),
	(10020,'Marvin Gaye'),
	(10021,'Aretha Franklin'),
	(10022,'Billy Joel'),
	(10023,'Bruno Mars'),
	(10024,'EDEN'),
	(10025,'Lady Gaga'),
	(10026,'Calvin Harris'),
	(10027,'Khalid'),
	(10028,'Ariana Grande')
;

go
--Customer Table			--Written By Ethan Weaver
create table Customer (
	PersonID		int			Not Null,
	CustomerSince	date		Not Null,
	--constraints
	--primary key
	constraint customer_custpersonid_pk primary key(PersonID),
	--foreign key
	constraint customer_personid_fk foreign key(PersonID) references Person(PersonID)
	on update cascade
	on delete no action
);
go

insert into Customer (PersonID, CustomerSince)
values
--Written by Eric Arsenault
  (1005, '03-18-2020')
, (1006, '04-08-2018')
, (1007, '04-27-2017')
, (1008, '10-30-2019')
, (1009, '03-09-2018')
, (1010, '06-26-2016')
, (1011, '06-26-2016')
, (1012, '11-26-2014')
, (1013, '06-02-2001')
, (1014, '08-14-2019')
, (1015, '09-19-2020')
, (1016, '07-27-2017')
, (1017, '08-12-1999')
, (1018, '12-02-2013')
, (1019, '01-11-2013')
, (1020, '12-13-2017')
;

go
--Employee Table			--Written By Ethan Weaver
create table Employee (
	PersonID		int			Not Null,
	SSN				char(9)		Not Null,
	DOB				date		Not Null,
	DriversLic		char(11)	Not Null,
	HireDate		date		Not Null,
	TermDate		date,
	--constraints
	--primary key
	constraint employee_emppersonid_pk primary key(PersonID),
	--foreign key
	constraint employee_personid_fk foreign key(PersonID) references Person(PersonID)
	on update cascade
	on delete no action,
	--unique
	constraint employee_driverslic_uk unique(DriversLic),
	constraint employee_ssn_uk unique(SSN)
);
go

insert into Employee (PersonID, SSN, DOB, DriversLic, HireDate, TermDate)
--Written by Eric Arsenault
values
  (1001, '939019292', '11-27-1986', 'A83209738', '11-19-2000', NULL)
, (1002, '123093999', '06-01-1985', 'J23474400', '02-25-2012', NULL)
, (1003, '777893545', '01-30-1994', 'S78965445', '06-22-2005', '01-20-2019')
, (1004, '989668877', '12-22-1990', 'E98493024', '04-13-2015', '03-22-17')
, (1021, '458978866', '06-21-1980', 'J82894302', '10-12-1996', NULL)
, (1022, '689457744', '03-13-1982', 'S83899953', '12-30-1999', '03-01-2016')
, (1023, '938658293', '05-23-1984', 'S53499953', '12-30-1999', NULL)
, (1024, '948752274', '11-11-2000', 'F87609872', '10-23-2013', NULL)
;
go
--Orders table				--Written By Ethan Weaver
create table Orders (
	OrderID			int,
	Date			date		Not Null,
	CustomerID		int,
	EmployeeID		int,
	--constraints
	--primary key
	constraint orders_orderid_pk primary key(OrderID),
	--foreign key
	constraint orders_customerid_fk foreign key(CustomerID) references Person(PersonID),
	constraint orders_employeeid_fk foreign key(EmployeeID) references Person(PersonID)
);
go

insert into Orders(OrderID, Date, CustomerID, EmployeeID)
--Written by Eric Arsenault
values
  (2000, '01-01-2020', 1008, 1001)
, (2001, '01-02-2021', 1005, 1002)
, (2002, '01-03-2021', 1007, 1023)
, (2003, '02-04-2021', 1007, 1023)
, (2004, '02-27-2021', 1020, 1024)
, (2005, '02-28-2021', 1012, 1001)
, (2006, '02-28-2021', 1006, 1002)
, (2007, '03-02-2021', 1006, 1023)
, (2008, '03-07-2021', 1016, 1002)
, (2009, '03-11-2021', 1012, 1001)
, (2010, '03-13-2021', 1020, 1024)
, (2011, '03-14-2021', 1019, 1024)
, (2012, '03-15-2021', 1011, 1023)
, (2013, '03-18-2021', 1008, 1024)
, (2014, '03-19-2021', 1013, 1021)
, (2015, '03-19-2021', 1016, 1021)
, (2016, '03-23-2021', 1012, 1023)
, (2017, '03-24-2021', 1005, 1001)
, (2018, '03-26-2021', 1007, 1001)
, (2019, '03-26-2021', 1012, 1002)
;
go

--Product Table				--Written By Ethan Weaver
create table Product (
	ProductID		int,
	ProductName		char(15)		Not Null,
	Price			decimal(9,2)	Not Null,
	VendorID		int,
	--primary key
	constraint product_productid_pk primary key(ProductID),
	--foreign key
	constraint product_vendorid_fk foreign key(VendorID) references Vendor(VendorID)
);
go

--PRODUCT TABLE INSERT STATEMENT WRITTEN BY SAM SAYEG and Justin Smith
INSERT INTO PRODUCT (ProductID,ProductName,Price,VendorID) 

VALUES 
(20001,'Record',49.99,1007),
(20002,'Record',49.99,1002),
(20003,'Record',29.99,1002),
(20004,'Record',29.99,1004),
(20005,'Record',49.99,1001),
(20006,'Record',49.99,1001),
(20007,'Record',49.99,1001),
(20008,'Record',49.99,1009),
(20009,'Record',29.99,1003),
(20010,'Record',29.99,1003),
(20011,'Record',29.99,1003),
(20012,'Record',29.99,1008),
(20013,'Record',29.99,1008),
(20014,'Record',29.99,1004),
(20015,'Record',29.99,1004),
(20016,'Record',29.99,1004),
(20017,'Record',29.99,1004),
(20018,'Record',29.99,1008),
(20019,'Record',29.99,1008),
(20020,'Record',39.99,1010),
(20021,'Record',39.99,1010),
(20022,'Record',39.99,1009),
(20023,'Record',39.99,1009),
(20024,'Record',39.99,1009),
(20025,'Record',39.99,1009),
(20026,'Record',39.99,1009),
(20027,'Record',29.99,1010),
(20028,'Record',29.99,1005),
(20029,'Record',29.99,1005),
(20030,'Record',49.99,1003),
(20031,'Record',49.99,1003),
(20032,'Record',39.99,1007),
(20033,'Record',39.99,1007),
(20034,'Record',29.99,1008),
(20035,'Record',49.99,1008),
(20036,'Record',49.99,1005),
(20037,'Record',49.99,1005),
(20038,'Record',49.99,1006),
(20039,'Record',49.99,1006),
(20040,'Record',49.99,1006),
(20041,'Record',29.99,1007),
(20042,'Record',29.99,1001),
(20043,'Record',29.99,1001),
(20044,'Record',29.99,1010),
(20045,'Record',29.99,1010),
(20046,'Record',29.99,1010),
(20047,'Record',29.99,1009),
(20048,'Record',29.99,1002),
(20049,'Record',29.99,1002),
(20050,'Record',29.99,1004),
(200001,'Headphones',124.99,1005),
(200002,'Speakers',249.99,1008),
(200003,'Microphone',89.99,1010),
(200004,'Tape Recorder',34.99,1002),
(200005,'Candy Bar',1.99,1009),
(200006,'Record Player',199.99,1010)
;
go
--Inventory Table			--Written By Ethan Weaver
create table Inventory (
	ProductID		int			Not Null,
	QuantityOnHand	int			Not Null,
	ReorderNumber	int			Not Null,
	DateLastOrdered	date		Not Null,
	--primary key
	constraint inventory_invproductid_pk primary key(ProductID),
	--foreign key
	constraint inventory_productid_fk foreign key(ProductID) references Product(ProductID)
	on update cascade
	on delete no action
);
go

--INVENTORY TABLE INSERT STATEMENT WRITTEN BY SAM SAYEG

INSERT INTO 
INVENTORY (ProductID,QuantityOnHand,ReorderNumber,DateLastOrdered ) 

VALUES 
(20001,23,44787,'2020-03-23'),
(20002,12,44330,'2006-09-30'),
(20003,24,44667,'2020-01-01'),
(20004,23,45117,'2021-03-23'),
(20005,26,44545,'2017-07-30'),
(20006,76,44754,'2015-06-12'),
(20007,22,44835,'2012-03-25'),
(20008,12,44829,'2003-09-23'),
(20009,23,44573,'2003-02-25'),
(20010,85,44243,'2014-05-29'),
(20011,44,44233,'2013-07-30'),
(20012,89,44354,'2012-08-27'),
(20013,22,43857,'2015-03-26'),
(20014,11,40487,'2020-02-27'),
(20015,35,44247,'2021-02-12'),
(20016,65,43589,'2018-06-30'),
(20017,67,40233,'2019-04-16'),
(20018,38,44243,'2020-02-25'),
(20019,39,40343,'2009-05-28'),
(20020,29,45655,'2006-06-06'),
(20021,12,44554,'2007-07-04'),
(20022,25,44445,'2001-03-03'),
(20023,72,44234,'2021-02-28'),
(20024,15,44355,'2011-05-06'),
(20025,82,44234,'2021-02-25'),
(20026,23,44234,'2020-06-15'),
(20027,99,44675,'2018-02-24'),
(20028,66,45483,'2016-03-14'),
(20029,96,43247,'2001-04-26'),
(20030,32,44587,'2002-06-07'),
(20031,14,44587,'1999-02-25'),
(20032,55,44682,'1991-08-07'),
(20033,75,44344,'1995-10-10'),
(20034,56,44645,'1994-09-09'),
(20035,23,44476,'1998-02-25'),
(20036,31,44534,'2006-02-25'),
(20037,65,44637,'1999-02-24'),
(20038,88,44966,'1996-02-26'),
(20039,84,41234,'1969-05-01'),
(20040,34,42435,'1962-04-04'),
(20041,43,44465,'1991-11-11'),
(20042,23,45875,'1993-12-27'),
(20043,89,48773,'2020-09-26'),
(20044,92,44672,'2020-05-24'),
(20045,45,42370,'2020-06-23'),
(20046,68,42337,'2014-07-16'),
(20047,76,43447,'2011-10-17'),
(20048,64,43247,'2010-10-19'),
(20049,21,44367,'2009-12-22'),
(20050,25,42347,'2021-11-17'),
(200001,23,44353,'2005-02-23'),
(200002,78,43547,'2003-09-01'),
(200003,12,44357,'2012-01-30'),
(200004,34,43457,'2013-08-25'),
(200005,45,43431,'2002-07-25'),
(200006,6,43000,'2020-09-18')
;

go
--Record Table				--Written By Ethan Weaver
create table Record (
	ProductID		int			Not Null,
	RecordName		char(60)	Not Null,
	ReleaseDate		date		Not Null,
	--primary key
	constraint record_recproductid_pk primary key(ProductID),
	--foreign key
	constraint record_productid_fk foreign key(ProductID) references Product(ProductID)
	on update cascade
	on delete no action
);
go
--Written By Justin Smith
insert into Record(ProductID, RecordName, ReleaseDate)
values
	(20001,'Kiss', '1974-02-18'),
	(20002,'Rocks', '1976-05-14'),
	(20003,'V', '2014-09-02'),
	(20004,'Drops Of Jupiter','2001-03-27'),
	(20005,'Revolver','1966-08-08'),
	(20006,'Sgt. Peppers Lonely Hearts Club Band','1967-05-26'),
	(20007,'The Beatles (The White Album)','1968-11-22'),
	(20008,'Rumours','1977-02-04'),
	(20009,'Red','2012-10-22'),
	(20010,'1989','2014-10-27'),
	(20011,'Reputation','2017-11-10'),
	(20012,'The College Dropout','2004-02-10'),
	(20013,'808s & Heartbreak','2008-11-24'),
	(20014,'A Fever You Cant Sweat Out', '2005-09-25'),
	(20015,'Pretty. Odd.', '2008-03-21'),
	(20016,'Vices & Virtues','2011-03-22'),
	(20017,'Too Weird To Live, Too Rare To Die!','2013-10-08'),
	(20018,'The Black Parade','2006-10-23'),
	(20019,'When We All Fall Asleep, Where Do We Go?','2019-03-29'),
	(20020,'Like A Virgin','1984-11-12'),
	(20021,'Ray Of Light','1998-03-03'),
	(20022,'Thriller','1982-11-30'),
	(20023,'Bad','1987-08-31'),
	(20024,'Dangerous','1991-11-26'),
	(20025,'Whitney Houston','1985-02-14'),
	(20026,'Whitney','1987-06-02'),
	(20027,'Anti','2016-01-28'),
	(20028,'Beyonce','2013-12-13'),
	(20029,'Lemonade','2016-04-23'),
	(20030,'Beggars Banquet','1968-12-06'),
	(20031,'Sticky Fingers','1971-04-23'),
	(20032,'Sign O The Times','1987-03-30'),
	(20033,'Purple Rain','1984-06-25'),
	(20034,'Views','2016-04-29'),
	(20035,'Whats Going On','1971-05-21'),
	(20036,'I Never Loved A Man The Way I Loved You','1967-03-10'),
	(20037,'Lady Soul','1968-01-22'),
	(20038,'The Stranger','1977-09-29'),
	(20039,'52nd Street','1978-10-11'),
	(20040,'Piano Man','1973-11-09'),
	(20041,'24K Magic','2012-12-07'),
	(20042,'Vertigo','2018-01-19'),
	(20043,'No Future','2020-02-14'),
	(20044,'Born This Way','2011-05-23'),
	(20045,'Joanne','2016-10-21'),
	(20046,'Chromatica','2020-05-29'),
	(20047,'Motion','2014-10-31'),
	(20048,'American Teen','2017-03-03'),
	(20049,'Free Spirit','2019-04-05'),
	(20050,'Thank U, Next','2019-02-08')
;
go
--Record_Genre Table				--Written By Justin Smith
create table Record_Genre (
	GenreID			int			Not Null,
	RecordID		int			Not Null, 
	--pk
	constraint recordgenre_recordgenreid_pk primary key(GenreID, RecordID),
	--fk
	constraint recordgenre_genreid_fk foreign key(GenreID) references Genre(GenreID)
	on update cascade
	on delete no action,
	constraint recordgenre_recordid_fk foreign key(RecordID) references Record(ProductID)
	on update cascade
	on delete no action
);
go
--Written By Justin Smith
insert into Record_Genre(GenreID, RecordID)
values
	(107,20001),
	(107,20002),
	(101,20003),
	(104,20003),
	(107,20003),
	(102,20004),
	(104,20004),
	(107,20004),
	(104,20005),
	(107,20005),
	(104,20006),
	(107,20006),
	(104,20007),
	(107,20007),
	(102,20008),
	(104,20008),
	(107,20008),
	(104,20009),
	(105,20009),
	(107,20009),
	(104,20010),
	(101,20011),
	(104,20011),
	(104,20012),
	(106,20012),
	(101,20013),
	(104,20013),
	(106,20013),
	(102,20014),
	(103,20014),
	(104,20014),
	(102,20015),
	(104,20015),
	(107,20015),
	(102,20016),
	(103,20016),
	(104,20016),
	(107,20016),
	(101,20017),
	(102,20017),
	(104,20017),
	(107,20017),
	(102,20018),
	(103,20018),
	(107,20018),
	(101,20019),
	(102,20019),
	(104,20019),
	(101,20020),
	(104,20020),
	(106,20020),
	(101,20021),
	(104,20021),
	(106,20021),
	(104,20022),
	(107,20022),
	(104,20023),
	(106,20023),
	(107,20023),
	(104,20024),
	(106,20024),
	(104,20025),
	(106,20025),
	(104,20026),
	(106,20026),
	(104,20027),
	(106,20027),
	(102,20028),
	(106,20028),
	(104,20029),
	(106,20029),
	(107,20030),
	(107,20031),
	(104,20032),
	(106,20032),
	(107,20032),
	(104,20033),
	(106,20033),
	(107,20033),
	(104,20034),
	(106,20034),
	(104,20035),
	(106,20035),
	(106,20036),
	(106,20037),
	(107,20038),
	(107,20039),
	(104,20040),
	(105,20040),
	(107,20040),
	(104,20041),
	(106,20041),
	(101,20042),
	(102,20042),
	(101,20043),
	(102,20043),
	(104,20044),
	(104,20045),
	(107,20045),
	(101,20046),
	(104,20046),
	(101,20047),
	(104,20048),
	(106,20048),
	(104,20049),
	(106,20049),
	(104,20050),
	(106,20050)
;
go
--Order_Product Table				--Written By Ethan Weaver
create table Order_Product (
	OrderID			int,
	ProductID		int,
	Quantity		int				Not Null,
	PriceCharged	decimal(9,2)	Not Null,
	--primary key
	constraint order_product_orderproduct_pk primary key(OrderID, ProductID),
	--foreign key
	constraint order_product_orderid_fk foreign key(OrderID) references Orders(OrderID)
	on update cascade
	on delete no action,
	constraint order_product_productid_fk foreign key(ProductID) references Product(ProductID)
	on update cascade
	on delete no action
);
go

--Order_product TABLE INSERT STATEMENT WRITTEN BY SAM SAYEG and Justin Smith 

INSERT INTO ORDER_PRODUCT (OrderID,ProductID,Quantity,PriceCharged) 

VALUES 
(2000,20016,1,29.99),
(2000,20017,1,29.99),
(2000,20015,1,29.99),
(2000,200006,1,199.99),
(2000,200005,1,1.99),	
(2001,20012,1,29.99),
(2001,20013,1,29.99),
(2002,20008,1,49.99),
(2002,20006,1,49.99),
(2003,20040,1,49.99),
(2003,200005,1,1.99),
(2004,20014,1,29.99),
(2004,20018,1,29.99),
(2005,20045,1,29.99),
(2005,20046,1,29.99),
(2005,200001,1,124.99),
(2006,20009,1,29.99),
(2006,20020,1,39.99),
(2006,20003,1,29.99),
(2006,200001,1,124.99),
(2006,200003,1,29.99),
(2006,200004,1,29.99),
(2007,20025,1,39.99),
(2007,20026,1,39.99),
(2007,200003,1,89.99),
(2008,20028,1,29.99),
(2008,200005,3,1.99),
(2009,20032,1,39.99),
(2009,20033,1,39.99),
(2009,200002,1,249.99),
(2010,20042,1,29.99),
(2010,200005,1,1.99),
(2011,20040,1,49.99),
(2012,20002,1,49.99),
(2012,20004,1,29.99),
(2012,200002,1,249.99),
(2013,20031,1,49.99),
(2014,20022,1,39.99),
(2014,20023,1,39.99),
(2014,20024,1,39.99),
(2014,200001,1,124.99),
(2014,200005,1,1.99),
(2015,20022,1,39.99),
(2015,200005,1,1.99),
(2016,20011,1,29.99),
(2017,20001,1,49.99),
(2017,200005,1,1.99),
(2018,20048,1,29.99),
(2018,20049,1,29.99),
(2018,200006,1,249.99),
(2019,20022,2,79.98)
;
go
--Artist_Record Table				--Written By Ethan Weaver
create table Artist_Record (
	ArtistID		int,
	ProductID		int,
	--primary key
	constraint artist_record_artistrecord_pk primary key(ArtistID, ProductID),
	--foreign key
	constraint artist_record_artistid_fk foreign key(ArtistID) references Artist(ArtistID)
	on update cascade
	on delete no action,
	constraint artist_record_productid_fk foreign key(ProductID) references Record(ProductID)
	on update cascade
	on delete no action
);
go
--Written by Justin Smith
insert into Artist_Record(ArtistID, ProductID)
values
	(10001,20001),
	(10002,20002),
	(10003,20003),
	(10004,20004),
	(10005,20005),
	(10005,20006),
	(10005,20007),
	(10006,20008),
	(10007,20009),
	(10007,20010),
	(10007,20011),
	(10008,20012),
	(10008,20013),
	(10009,20014),
	(10009,20015),
	(10009,20016),
	(10009,20017),
	(10010,20018),
	(10011,20019),
	(10012,20020),
	(10012,20021),
	(10013,20022),
	(10013,20023),
	(10013,20024),
	(10014,20025),
	(10014,20026),
	(10015,20027),
	(10016,20028),
	(10016,20029),
	(10017,20030),
	(10017,20031),
	(10018,20032),
	(10018,20033),
	(10019,20034),
	(10008,20034),
	(10020,20035),
	(10021,20036),
	(10021,20037),
	(10022,20038),
	(10022,20039),
	(10022,20040),
	(10023,20041),
	(10024,20042),
	(10024,20043),
	(10025,20044),
	(10025,20045),
	(10025,20046),
	(10026,20047),
	(10027,20048),
	(10027,20049),
	(10028,20050)
;


