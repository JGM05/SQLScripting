alter table Abteilung add temp VARCHAR(10);
update Abteilung set temp = Kuerzel;
alter table Abteilung drop Kuerzel;
alter table Abteilung add Kuerzel CHAR(4) not null;
update Abteilung set Kuerzel = SUBSTRING(temp from 1 for 4);
alter table Abteilung drop temp;