# Dump of table my_contacts
# ------------------------------------------------------------
DROP DATABASE IF EXISTS mycontact;

CREATE DATABASE mycontact;

use mycontact;
CREATE TABLE 2nf (
  last_name varchar(30),
  first_name varchar(20),
  gender char(1),
  birthday date,
  profession varchar(50),
  location varchar(50),
  status varchar(20),
 seeking varchar(100),
 interest1 varchar(100),
 interest2 varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE name_email (
  last_name varchar(30),
  first_name varchar(20),
  email varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Anderson','Jillian','F','1980-09-05','Technical Writer','Palo Alto, CA','single','friends','kayaking', 'reptiles');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Kenton','Leo','M','1974-01-10','Manager','San Francisco, CA','divorced','women to date','women');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('McGavin','Darrin','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','women for casual relationships','sailing', 'fishing');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Franklin','Joe','M','1977-04-28','Software Sales','Dallas, TX','married','new job','fishing', 'drinking');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Hamilton','Jamie','F','1964-09-10','System Administrator','Princeton, NJ','married','nothing','RPG');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Chevrolet','Maurice','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','friends','collecting books', 'scuba diving');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Kroger','Renee','F','1976-12-03','Unemployed','San Francisco, CA','divorced','employment','cooking');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Mendoza','Angelina','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','new job','acting', 'dancing');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Murphy','Donald','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','friends','RPG', 'anime');
INSERT INTO 2nf (last_name,first_name,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Spatner','John','M','1963-04-18','Salesman','Woodstock, NY','married','nothing','poetry', 'screenwriting');
INSERT INTO  2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Toth','Anne','F','1969-11-18', 'Artist','San Fran, CA');
INSERT INTO 2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Manson','Anne','F','1977-08-09', 'Baker','Seattle, WA');
INSERT INTO  2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Hardy','Anne','F','1963-04-18', 'Teacher','San Fran, CA');
INSERT INTO  2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Parker','Anne','F','1983-01-10', 'Student','San Fran, CA');
INSERT INTO  2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Blunt','Anne','F','1959-10-09', 'Web Designer','San Fran, CA');
INSERT INTO 2nf (last_name,first_name,gender,birthday, profession,location) VALUES ('Jacobs','Anne','F','1968-02-05', 'Computer Programmer','San Jose, CA');


INSERT INTO name_email (last_name,first_name,email) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('McGavin','Darrin','captainlove@headfirsttheater.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Kroger','Renee','poorrenee@mightygumball.net');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Spatner','John','jpoet@objectville.net');
INSERT INTO  name_email (last_name,first_name,email) VALUES ('Toth','Anne','Anne_Toth@leapinlimos.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Manson','Anne','am86@objectville.net');
INSERT INTO  name_email (last_name,first_name,email) VALUES ('Hardy','Anne','anneh@b0tt0msup.com');
INSERT INTO  name_email (last_name,first_name,email) VALUES ('Parker','Anne','annep@starbuzzcoffee.com');
INSERT INTO  name_email (last_name,first_name,email) VALUES ('Blunt','Anne','anneblunt@breakneckpizza.com');
INSERT INTO name_email (last_name,first_name,email) VALUES ('Jacobs','Anne','anne99@objectville.net');
