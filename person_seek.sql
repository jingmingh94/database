USE Normalization1;
DROP TABLE IF EXISTS people_seek;
CREATE TABLE people_seek (
person_ID int(11)  NOT NULL auto_increment,
seeking VARCHAR(100) ,
  seek_1 VARCHAR(100) ,
   seek_2 VARCHAR(100) ,
  PRIMARY KEY  (person_ID)
)AS
	SELECT DISTINCT  person_ID, seeking
	FROM my_contacts
WHERE  person_ID IS NOT NULL
	ORDER BY person_ID;


ALTER TABLE my_contacts
 ADD COLUMN  seek_1 VARCHAR(100),
 ADD COLUMN seek_2 VARCHAR(100);

UPDATE people_seek
   SET
      people_seek.seek_1=  SUBSTRING_INDEX(people_seek.seeking ,',', 1)
WHERE people_seek.seeking IS NOT NULL;
UPDATE people_seek
   SET
   people_seek.seeking=REPLACE(people_seek.seeking,CONCAT(people_seek.seek_1,','),'')
       WHERE  people_seek.seeking IS NOT NULL;
UPDATE people_seek
   SET
   people_seek.seeking=REPLACE(people_seek.seeking,people_seek.seek_1,'')
       WHERE  people_seek.seeking IS NOT NULL;
UPDATE people_seek
	  SET
	     people_seek.seek_2=  people_seek.seeking
WHERE people_seek.seeking IS NOT NULL;




UPDATE my_contacts
	INNER JOIN people_seek
	ON people_seek.person_ID = my_contacts.person_ID
	SET my_contacts.seek_1 = people_seek.seek_1
	WHERE people_seek.person_ID IS NOT NULL;
UPDATE my_contacts
	INNER JOIN people_seek
	ON people_seek.person_ID = my_contacts.person_ID
SET my_contacts.seek_2 = people_seek.seek_2
	WHERE  people_seek.person_ID IS NOT NULL;
SELECT mc.seek_1, mc.seek_2, ps.seek_1,ps.seek_2
	FROM my_contacts AS mc
	JOIN people_seek AS ps
	ON ps.seek_1= mc.seek_1;
SELECT mc.seek_1, mc.seek_2, ps.seek_1,ps.seek_2
	FROM my_contacts AS mc
	JOIN people_seek AS ps
	    ON ps.seek_2= mc.seek_2;





 ALTER TABLE my_contacts
 	DROP COLUMN seeking;
 ALTER TABLE people_seek
 	DROP COLUMN seeking;

