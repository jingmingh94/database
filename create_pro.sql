USE Normalization1;

DROP TABLE IF EXISTS person_pro;
CREATE TABLE person_pro (
  person_ID int(11) NOT NULL auto_increment,

  profession VARCHAR(50) NOT NULL,
  PRIMARY KEY  (person_ID)
) AS
	SELECT DISTINCT  profession
	FROM my_contacts
WHERE  profession IS NOT NULL

	ORDER BY  profession;


ALTER TABLE my_contacts
	modify COLUMN profession VARCHAR(50);

UPDATE my_contacts
	INNER JOIN person_pro
	ON person_pro.person_ID = my_contacts.person_ID

	SET my_contacts.profession =person_pro.profession
	WHERE person_pro.person_ID IS NOT NULL;


SELECT mc.person_ID, pp.profession
	FROM my_contacts AS mc
	JOIN person_pro AS pp
	ON pp.profession = mc.profession;

# ALTER TABLE my_contacts
# 	DROP COLUMN gender;


