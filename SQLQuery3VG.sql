select *
FROM [RoosterProjV2].[dbo].[vgsales$]

--selecting data 
select Rank, Genre, Platform, NA_sales
FROM [RoosterProjV2].[dbo].[vgsales$]

-- selecting the top 10 highest rank
-- OFFSET eliminates the first row making it 0 (starting piont to display a set of rows) and FETCH shows only the amount of rows requested 
select Rank, Genre, Platform, NA_sales
FROM [RoosterProjV2].[dbo].[vgsales$]
order by rank asc
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY


-- looking at xbox data 
select Rank, Genre, Platform, NA_sales
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform like 'XB'


--figuring our what genre has the highest sales in NA (TOP 10)
select Genre, Platform, NA_sales
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform like 'XB'
ORDER BY Na_sales desc
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY

--making sure no line has null values
select Rank, Genre, Platform, NA_sales
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform is null

--adding name into data
select Rank, Genre, Platform, NA_sales, name
FROM [RoosterProjV2].[dbo].[vgsales$]

-- top 10 video game by name
select Rank, Genre, Platform, NA_sales, name
FROM [RoosterProjV2].[dbo].[vgsales$]
order by rank asc
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY

--top 10 Xbox games sales
select Rank, Genre, Platform, NA_sales, name
FROM [RoosterProjV2].[dbo].[vgsales$]
where PLATFORM Like 'XB'
order by NA_Sales desc
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY

--top 10 PS3 games sales
select Rank, Genre, Platform, NA_sales, name
FROM [RoosterProjV2].[dbo].[vgsales$]
where PLATFORM Like 'ps3'
order by NA_Sales desc
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY

--sum of rank by platformm in descending order
SELECT
SUM(Rank) as total_rank, Platform
FROM [RoosterProjV2].[dbo].[vgsales$]
group by Platform
order by Total_rank desc


-- total count of genre in descending order
SELECT
genre, count(genre) as total_genre
FROM [RoosterProjV2].[dbo].[vgsales$]
group by genre
order by Total_genre desc


--total amount release date by genre  
SELECT genre, count(year) as total_year
FROM [RoosterProjV2].[dbo].[vgsales$]
group by genre
order by Total_year desc

--total amount of content realesd by year
SELECT year, count(year) as total_year
FROM [RoosterProjV2].[dbo].[vgsales$]
group by year
order by Total_year desc

--Out of the games released in 2009 what where the top five games.
select Rank, Genre, Platform, year, name
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform ='X360' and year = 2009
order by rank asc
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY


-- Total games released in 2009 for x360
SELECT year, count(year) as total_year
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform ='X360' and year = 2009
group by year
order by Total_year desc

-- out of the games relseased in 2009 what where the top genres.
SELECT  count(genre) as total_genre, Genre
FROM [RoosterProjV2].[dbo].[vgsales$]
where Platform ='X360' and year = 2009
group by Genre
order by Total_genre desc