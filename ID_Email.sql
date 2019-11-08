USE Normalization1;

DROP TABLE IF EXISTS create_Email;
CREATE TABLE create_Email (
  person_ID int(11) NOT NULL auto_increment,

  Email VARCHAR(50) NOT NULL,
  PRIMARY KEY  (person_ID)
) AS
	SELECT DISTINCT  email
	FROM my_contacts
WHERE  email IS NOT NULL

	ORDER BY  email;


ALTER TABLE my_contacts
	modify COLUMN email VARCHAR(50);

UPDATE my_contacts
	INNER JOIN create_Email
	ON create_Email.person_ID = my_contacts.person_ID

	SET my_contacts.email =create_Email.Email
	WHERE create_Email.person_ID IS NOT NULL;


SELECT mc.person_ID, ce.Email
	FROM my_contacts AS mc
	JOIN create_Email AS ce
	ON ce.Email = mc.email;

# ALTER TABLE my_contacts
# 	DROP COLUMN gender;


