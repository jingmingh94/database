USE Normalization1;
DROP TABLE IF EXISTS person_interest;
CREATE TABLE person_interest (
person_ID int(11)  NOT NULL auto_increment,
interests VARCHAR(100) ,
  interest_1 VARCHAR(100) ,
   interest_2 VARCHAR(100) ,
    interest_3 VARCHAR(100),
  PRIMARY KEY  (person_ID)
)AS
	SELECT DISTINCT   person_ID, interests
	FROM my_contacts
WHERE  person_ID IS NOT NULL
	ORDER BY person_ID;


ALTER TABLE my_contacts
 ADD COLUMN  interest_1 VARCHAR(100),
 ADD COLUMN  interest_2 VARCHAR(100),
 ADD COLUMN  interest_3 VARCHAR(100);


UPDATE person_interest
   SET
      person_interest.interest_1=  SUBSTRING_INDEX(person_interest.interests ,',', 1)
WHERE person_interest.interests IS NOT NULL;
UPDATE person_interest
   SET
   person_interest.interests=REPLACE(person_interest.interests,CONCAT(person_interest.interest_1,','),'')
       WHERE  person_interest.interests IS NOT NULL;
UPDATE person_interest
   SET
      person_interest.interests=REPLACE(person_interest.interests,person_interest.interest_1,'')
       WHERE  person_interest.interests IS NOT NULL;
UPDATE person_interest
    SET
       person_interest.interest_2=  SUBSTRING_INDEX( person_interest.interests,',', 1)
WHERE person_interest.interests IS NOT NULL;
UPDATE person_interest
    SET
person_interest.interests=REPLACE(person_interest.interests,CONCAT(person_interest.interest_2,','),'')
WHERE person_interest.interests IS NOT NULL;
UPDATE person_interest
    SET
person_interest.interests=REPLACE(person_interest.interests,person_interest.interest_2,'')
WHERE person_interest.interests IS NOT NULL;
UPDATE person_interest
	  SET
	     person_interest.interest_3=  person_interest.interests
WHERE person_interest.interests IS NOT NULL;


UPDATE my_contacts
	INNER JOIN person_interest
	ON person_interest.person_ID = my_contacts.person_ID
	SET my_contacts.interest_1 = person_interest.interest_1
	WHERE person_interest.person_ID IS NOT NULL;
UPDATE my_contacts
	INNER JOIN person_interest
	ON person_interest.person_ID = my_contacts.person_ID
SET my_contacts.interest_2 = person_interest.interest_2
	WHERE  person_interest.person_ID IS NOT NULL;
UPDATE my_contacts
	INNER JOIN person_interest
	ON person_interest.person_ID = my_contacts.person_ID
SET my_contacts.interest_3 = person_interest.interest_3
	WHERE  person_interest.person_ID IS NOT NULL;
SELECT mc.interest_1, mc.interest_2, mc.interest_3, pt.interest_1,pt.interest_2,pt.interest_3
	FROM my_contacts AS mc
	JOIN person_interest AS pt
	ON pt.interest_1= mc.interest_1;
SELECT mc.interest_1, mc.interest_2, mc.interest_3, pt.interest_1,pt.interest_2,pt.interest_3
	FROM my_contacts AS mc
	JOIN person_interest AS pt
	    ON pt.interest_2= mc.interest_2;
SELECT mc.interest_1, mc.interest_2, mc.interest_3, pt.interest_1,pt.interest_2,pt.interest_3
	FROM my_contacts AS mc
	JOIN person_interest AS pt



ON pt.interest_3 = mc.interest_3;
ALTER TABLE my_contacts
 	DROP COLUMN interests;

ALTER TABLE person_interest
 	DROP COLUMN interests;

