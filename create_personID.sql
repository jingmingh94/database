USE Normalization1;

DROP TABLE IF EXISTS person_ID;
CREATE TABLE person_ID (
  person_ID int(11) NOT NULL auto_increment,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  PRIMARY KEY  (person_ID)
) AS
	SELECT DISTINCT  last_name,first_name
	FROM my_contacts

	ORDER BY last_name;

ALTER TABLE my_contacts
	add COLUMN person_ID INT(11);

UPDATE my_contacts
	INNER JOIN person_ID
	ON person_ID.first_name = my_contacts.first_name
&& person_ID.last_name = my_contacts.last_name
	SET my_contacts.person_ID =person_ID.person_ID
	WHERE person_ID.person_ID IS NOT NULL;


SELECT mc.first_name, mc.last_name, mc.person_ID, pi.person_ID
	FROM my_contacts AS mc
	JOIN person_ID AS pi
	ON pi.person_ID = mc.person_ID;

# ALTER TABLE my_contacts
# 	DROP COLUMN gender;


