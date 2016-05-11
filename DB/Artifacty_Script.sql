--creare table+contrangeri

create table artefact(
artefactID Number(3),
artefactName varchar2(200),
currentLocation varchar2(100),
pictureAddress varchar2(300),
author varchar2(100),
licence varchar2(200),
description varchar2(1000),
discoveryDate DATE,
primary key (artefactID)
);
drop table artefact;
/
create table legatura(
artefactID number(3), 
familyID number(3),
foreign key (artefactID) references artefact(artefactID),
foreign key (familyID) references family(familyId)
);
drop table legatura;
/
create table family(
familyID number(3),
familyName varchar2(100),
primary key (familyID)
);
drop table family;
/
create table tags(
artefactID number(3)references artefact(artefactID),
tagID varchar2(100)
);
drop table tags;
/
create table descoperiri (
arheologID number(3) references arheolog(arheologID),
artefactID number(3) references artefact(artefactID),
anDescoperire DATE,
locatieDescoperire varchar2(200)
);
drop table descoperiri;
/
create table arheolog(
arheologID number(3) primary key,
dataNasterii DATE,
dataMortii DATE,
nationalitate varchar2(20),
link varchar2(200)
);
drop table arheolog;
/
--populare tabele
--populare table artefact


--populare tabela family

--populare tabela arheolog

--populare tabela legatura

--populare tabela tags

--populare tablea descoperiri

--test foreing key     
insert into descoperiri values(100,100,TO_DATE('17/02/1995', 'dd/mm/yyyy'),'test foreing key');