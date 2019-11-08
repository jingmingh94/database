USE Normalization1;
DROP TABLE IF EXISTS person_sta;

CREATE TABLE person_sta (
  sta_ID int(11) NOT NULL auto_increment,
  status VARCHAR(25) NOT NULL,
  PRIMARY KEY  (sta_ID)
) AS
	SELECT DISTINCT status
	FROM my_contacts
	WHERE status IS NOT NULL
	ORDER BY status;

ALTER TABLE my_contacts


 ADD COLUMN sta_ID INT(11);

UPDATE my_contacts
	INNER JOIN person_sta
	ON person_sta.status = my_contacts.status
	SET my_contacts.sta_ID = person_sta.sta_ID
	WHERE person_sta.status IS NOT NULL;


SELECT mc.person_ID, mc.status, mc.sta_ID, st.status
	FROM my_contacts AS mc
	JOIN person_sta AS st
	ON st.sta_ID = mc.sta_ID;

# ALTER TABLE my_contacts
# 	DROP COLUMN status;


