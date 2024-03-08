
alter table musician drop foreign key musician_ibfk_1;

ALTER TABLE musician drop column bandName;
ALTER TABLE musician drop column role;

ALTER TABLE musician RENAME TO singer;

drop table band;

ALTER TABLE singer RENAME COLUMN musicianName to singerName;