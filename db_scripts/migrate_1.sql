
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName to musicianName;

CREATE TABLE BAND LIKE label ;
ALTER TABLE BAND RENAME COLUMN labelName to bandName;


INSERT INTO BAND VALUES ('Crazy Duo',2015,'rock'),('Luna',2009,'classical'),('Mysterio'	,2019,'pop');

ALTER TABLE musician ADD COLUMN (role VARCHAR(50), bandName varchar(50));
alter table musician add foreign key (bandName) references band(bandName);

update musician set role = 'vocals' where musicianName = 'alina';
update musician set role = 'guitar' where musicianName = 'Mysterio';
update musician set role = 'percussion' where musicianName = 'Rainbow';
update musician set role = 'piano' where musicianName = 'Luna';

update musician set bandName = 'Crazy Duo' where musicianName = 'alina' or musicianName = 'Rainbow';
update musician set bandName = 'Mysterio' where musicianName = 'Mysterio';
update musician set bandName = 'Luna' where musicianName = 'Luna';



