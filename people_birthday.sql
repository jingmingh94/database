USE Normalization1;

DROP TABLE IF EXISTS person_birthday;
CREATE TABLE person_birthday (
  person_ID int(11) NOT NULL auto_increment,

  birthday date NOT NULL,
  PRIMARY KEY  (person_ID)
) AS
	SELECT DISTINCT  birthday
	FROM my_contacts
WHERE  birthday IS NOT NULL

	ORDER BY  birthday;




UPDATE my_contacts
	INNER JOIN person_birthday
	ON person_birthday.person_ID = my_contacts.person_ID

	SET my_contacts.birthday =person_birthday.birthday
	WHERE person_birthday.person_ID IS NOT NULL;


SELECT mc.person_ID, pb.birthday
	FROM my_contacts AS mc
	JOIN person_birthday AS pb
	ON pb.birthday = mc.birthday;

# ALTER TABLE my_contacts
# 	DROP COLUMN gender;


