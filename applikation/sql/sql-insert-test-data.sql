USE quizapp;

INSERT INTO answer (`text`)
VALUES ('Adam'),
	('Berit'),
	('Casper'),
	('Diana'), 
	('Erik'),
	('Fredrike'),
	('Gustav'),
	('Hanna');
	
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

INSERT INTO `courseparticipation` 
VALUES (1,2),
	(3,2),
	(5,2),
	(7,2),
	(9,2),
	(2,3),
	(4,3),
	(6,3),
	(8,3),
	(1,4),
	(3,4),
	(5,4),
	(6,4),
	(9,4),
	(2,5),
	(3,5),
	(4,5),
	(6,5),
	(8,5),
	(9,5),
	(1,6),
	(3,6),
	(5,6),
	(8,6),
	(9,6),
	(1,7),
	(6,7),
	(9,7),
	(2,8),
	(3,8),
	(5,8),
	(9,8),
	(1,9),
	(8,9),
	(5,10),
	(7,10),
	(4,11),
	(7,11);
	
INSERT INTO question (`text`, `answer`)
VALUES ('Vilket av namnen börjar på A?', 1),
	('Vilket av namnen börjar på B?', 2),
	('Vilket av namnen börjar på C?', 3),
	('Vilket av namnen börjar på D?', 4),
	('Vilket av namnen börjar på E?', 5),
	('Vilket av namnen börjar på F?', 6),
	('Vilket av namnen börjar på G?', 7),
	('Vilket av namnen börjar på H?', 8);
	
INSERT INTO incorrectanswer (`question`, `answer`)
VALUES (3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(1, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(1, 3),
	(1, 4),
	(3, 4), 
	(2, 5),
	(8, 5),
	(2, 6),
	(2, 7),
	(4, 8),
	(5, 8),
	(6, 8), 
	(7, 8);
	
INSERT INTO quiz (`course`, `quizname`)
VALUES (5, 'HTML syntax'), 
	(5, 'CSS syntax'), 
	(6, 'Klasser och arv'), 
	(6, 'Typer i C#'), 
	(7, 'Dålig javascript'), 
	(7, 'Bra javascript'), 
	(8, 'SCRUM'), 
	(8, 'UP'), 
	(9, 'ASP.NET'), 
	(9, 'Web Form'), 
	(10, 'Planering'), 
	(10, 'Redovisning'), 
	(11, 'Vektorgrafik'), 
	(11, 'Bitmap'), 
	(12, 'PHP syntax'), 
	(12, 'MVC'), 
	(13, 'Model-Vy seperation'), 
	(13, 'GRASP');
	
INSERT INTO quizquestion (`quiz`, `question`)
VALUES (1, 1),
	(9, 1),
	(17, 1), 
	(1, 2), 
	(3, 2), 
	(9, 2), 
	(11, 2), 
	(2, 3), 
	(3, 3), 
	(10, 3), 
	(11, 3), 
	(18, 3), 
	(2, 4), 
	(4, 4), 
	(10, 4), 
	(12, 4), 
	(18, 4), 
	(4, 5), 
	(5, 5), 
	(12, 5), 
	(13, 5), 
	(5, 6), 
	(7, 6), 
	(13, 6), 
	(15, 6), 
	(6, 7), 
	(7, 7), 
	(8, 7), 
	(14, 7), 
	(15, 7), 
	(16, 7), 
	(6, 8), 
	(8, 8), 
	(14, 8), 
	(16, 8), 
	(17, 8);
	
INSERT INTO quizresult (`quiz`, `user`, `score`, `maxscore`)
VALUES (1, 1, 1, 2), 
	(1, 1, 2, 2), 
	(3, 2, 0, 2), 
	(4, 2, 1, 2), 
	(5, 3, 2, 2), 
	(6, 3, 0, 2), 
	(7, 4, 1, 2), 
	(8, 5, 2, 2);