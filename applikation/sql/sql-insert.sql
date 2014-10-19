USE quizapp;

INSERT INTO `user` (username, password, salt, privileges) 
VALUES ('Admin','_asdfghjkInw7dxgsRXw','_asdfghjk','Admin'),
	('Student','_asdfghjkInw7dxgsRXw','_asdfghjk','Student'),
	('Student2','_asdfghjkInw7dxgsRXw','_asdfghjk','Student'),
	('Student3','_asdfghjkInw7dxgsRXw','_asdfghjk','Student'),
	('Student4','_asdfghjkInw7dxgsRXw','_asdfghjk','Student'),
	('Student5','_asdfghjkInw7dxgsRXw','_asdfghjk','Student'),
	('Lärare','_asdfghjkInw7dxgsRXw','_asdfghjk','Teacher'),
	('Lärare2','_asdfghjkInw7dxgsRXw','_asdfghjk','Teacher'),
	('Lärare3','_asdfghjkInw7dxgsRXw','_asdfghjk','Teacher'),
	('Lärare4','_asdfghjkInw7dxgsRXw','_asdfghjk','Teacher'),
	('Lärare5','_asdfghjkInw7dxgsRXw','_asdfghjk','Teacher');

INSERT INTO `course` (name, description) 
VALUES ('Webbteknisk introduktion','Kursen Webbteknisk introduktion är en kurs som inom ramen för programmen ”Webbprogrammerare” och ”Utvecklare av digitala tjänster” vid Linnéuniversitetet i Kalmar och genomförs på campus såväl som distans. Kursen behandlar grundläggande HTML/CSS, SEO (sökmotoroptimering) och anpassning av webbsidor för mobila enheter. Att lära sig skapa tillgängliga webbgränssnitt är en röd tråd genom hela kursen.'),
	('Inledande programmering med C#','Kursen Inledande programmering med C# är en fristående kurs och programkurs för studenter vid programmen “Utvecklare av digitala tjänster” och ”Webbprogrammerare” vid Linnéuniversitetet i Kalmar och genomförs på campus såväl som distans. Kursen behandlar grunderna i objektorienterad programmering där applikationer skrivs för konsolmiljön.'),
	('Webbteknik I','Kursen Webbteknik I är en kurs som inom ramen för programmen ”Webbprogrammerare” och ”Utvecklare av digitala tjänster” vid Linnéuniversitetet i Kalmar och genomförs på campus såväl som distans.'),
	('Iterativ mjukvaruutveckling','Kursen behandlar mjukvaruutveckling i ett helhetsperspektiv och efter avslutad kurs kommer du att ha förståelse för hur man utvecklar mjukvara med rätt kvalitet och funktionalitet givet de resurser som står till förfogande. Den iterativa mjukvaruutvecklingsprocessen Unified Process är den röda tråden genom kursen och vi fördjupar oss i delar som kravhantering med bland annat användningsfall (use cases) och användarberättelser (user stories), agil projekthantering (SCRUM), och testning av mjukvara.'),
	('ASP.NET Web Forms','Kursen ASP.NET Web Forms är en programkurs för studenter vid programmen “Utvecklare av digitala tjänster” och ”Webbprogrammerare” vid Linnéuniversitetet i Kalmar och genomförs på campus såväl som distans. Kursen behandlar planering och skapade av webbapplikationer med ASP.NET Web Forms. Webbapplikationernas persistenta data lagras i databaser och hanteras med traditionell ADO.NET.'),
	('Individuellt mjukvaruutvecklingsprojekt','I denna kurs får du arbeta individuellt med att ta fram en mjukvara från idé till färdig applikation. Du kommer att arbeta mycket med programmering, krav, planering och testning. Till din hjälp har du ett antal kurskamrater som arbetar med liknande idéer eller liknande tekniker samt handledarmöten varje vecka. Du kommer att arbeta iterativt med en SCRUM-liknande arbetsprocess. Kursen har ett entrepenöriellt fokus och innehåller ett antal gästföreläsningar från olika organisationer och näringslivet. Kursen avslutas med en gemensam redovisning där du får visa upp din applikation och berätta om dina erfarenheter under utvecklingen.'),
	('Gränssnittsutveckling','För att skapa effektiva, attraktiva och användbara användargränssnitt gäller det att få flera pusselbitar att falla på plats. Gränssnittet behöver vara anpassat till sin målgrupp och det behöver vara utformat så att det är lätt att förstå och lätt att använda. Dessutom ska gränssnittet utföra en uppgift som är meningsfull för dess användare, t ex att informera användaren på ett effektivt och/eller underhållande sätt eller utföra någon nyttig tjänst. Sist, men inte minst, bör det också vara estetiskt tilltalande.'),
	('Webbutveckling med PHP','Kursen Webbutveckling med PHP, 7.5 Hp syftar till att ge er ett andra programmeringsspråk för serversidan. Den första delen handlar om språket PHP och hur objektorienterade applikationer kan skrivas med hjälp utav det. Men språkets grunder är bara början, kursen syftar också till att ge en djupare insikt i programmering. Vi kommer titta på arkitektur för webbapplikationer men även arbeta med kodkvalitet. Detta kommer ni kommer ni ha nytta av även i andra programmeringsspråk.'),
	('Objektorienterad analys och design med UML','Kursen handlar om objektorientering med fokus på objektorienterad analys/domänmodellering och objektorienterad design med praktiska exempel i objektorienterad programmering.');

INSERT INTO `courseparticipation` 
VALUES (5,13),
	(7,13),
	(9,13),
	(11,13),
	(13,13),
	(6,14),
	(8,14),
	(10,14),
	(12,14),
	(5,15),
	(7,15),
	(9,15),
	(11,15),
	(13,15),
	(6,16),
	(7,16),
	(8,16),
	(10,16),
	(12,16),
	(13,16),
	(5,17),
	(7,17),
	(9,17),
	(12,17),
	(13,17),
	(5,18),
	(10,18),
	(13,18),
	(6,19),
	(7,19),
	(9,19),
	(13,19),
	(5,20),
	(12,20),
	(9,21),
	(11,21),
	(8,22),
	(11,22);