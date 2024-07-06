CREATE PROCEDURE [dbo].[spGetAllApplicatns] -- here we write the name for our stored prosedure (sp). dbo means database owner
as -- when we write sp we must put "as"
begin

-- here we write the sql query
SELECT * 
FROM applicants;
end
GO


CREATE PROCEDURE [dbo].[spAddNewVolunteeringPlace]
@place_name varchar(255)
as
begin
INSERT INTO volunteering_places_list(place_name) VALUES (@place_name);
end
GO

-- this is to test, exec is for running the procedure
exec spAddNewVolunteeringPlace 'Kiryat Atta Bet Avot'
