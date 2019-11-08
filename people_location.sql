USE Normalization1;
DROP TABLE IF EXISTS create_lo;

CREATE TABLE create_lo (
  lo_ID int(11) NOT NULL auto_increment,
  location VARCHAR(25) NOT NULL,
  PRIMARY KEY  (lo_ID)
) AS
	SELECT DISTINCT location
	FROM my_contacts
	WHERE location IS NOT NULL
	ORDER BY location;

ALTER TABLE my_contacts


 ADD COLUMN lo_ID INT(11);

UPDATE my_contacts
	INNER JOIN create_lo
	ON create_lo.location = my_contacts.location
	SET my_contacts.lo_ID = create_lo.lo_ID
	WHERE create_lo.location IS NOT NULL;


SELECT mc.person_ID, mc.location, mc.lo_ID, pc.location
	FROM my_contacts AS mc
	JOIN create_lo AS pc
	ON pc.lo_ID = mc.lo_ID;

# ALTER TABLE my_contacts
# 	DROP COLUMN location;


