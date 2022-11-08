Select *
	From [repository_1]..Sheet1$

--Table for a map using name, class, mass, reclong, reclat

Select name, recclass, [mass(g)], reclong, reclat, GeoLocation
	From [repository_1]..Sheet1$
	Where reclong is not null
	Order by [mass(g)]

--Table to show count, recclass
Select id, recclass
	From [repository_1]..Sheet1$
	Order by recclass

--Table to show count, mass
Select id, [mass(g)]
	From [repository_1]..Sheet1$
	Where [mass(g)] is not null
	Order by [mass(g)]

--Table to show the year of the meteorite, seperated by class
Select year, recclass, id
	From [repository_1]..Sheet1$
	Where year is not null
	Order by year