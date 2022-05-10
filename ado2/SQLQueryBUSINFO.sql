create table BusInformation (
BusID int Primary Key,
BoardingPoint nvarchar(255),
TravelDate datetime,
Amount decimal(10,2),
Rating int,
DroppingPoint nvarchar(255)
)
create procedure InsertInfo (
	@BusID int,
	@BoardingPoint nvarchar(255), 
	@TravelDate datetime, 
	@Amount decimal(10,2), 
	@Rating int,
	@DroppingPoint nvarchar(255)
	)
as 
Begin 
  Insert into BusInformation values (@BusID, @BoardingPoint, @TravelDate, @Amount, @Rating, @DroppingPoint )
End

select * from BusInformation
exec  InsertInfo
1,	'BGL',	'20170618',	400.65,	2, 'MUM'

exec InsertInfo
2,	'HYD',	'20171005',	600.00,	3, 'PUN'

exec  InsertInfo
3,	'CHN',	'20160725',	445.95,	3, 'NGP'

exec  InsertInfo
4,	'PUN',	'20171210',	543.00,	4, 'CHN'

exec  InsertInfo
5,	'MUM',	'20170128',	500.50,	4, 'HYD'

exec  InsertInfo
6,	'PUN',	'20160327',	333.55,	3, 'MUM'

exec InsertInfo
7,	'MUM',	'20161106',	510.00,	4, 'LKO'