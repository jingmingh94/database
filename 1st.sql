# Dump of table my_contacts
# ------------------------------------------------------------
DROP DATABASE IF EXISTS mycontact;

CREATE DATABASE mycontact;

use mycontact;
CREATE TABLE table_name (
  last_name varchar(30),
  first_name varchar(20),
  email varchar(50),

  gender char(1),
  birthday date,
  profession varchar(50),
  location varchar(50),
  status varchar(20),
 seeking varchar(100),
 interest1 varchar(100),
 interest2 varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Anderson','Jillian','jill_anderson@breakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','friends','kayaking', 'reptiles');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women to date','women');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('McGavin','Darrin','captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','women for casual relationships','sailing', 'fishing');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','new job','fishing', 'drinking');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','nothing','RPG');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','friends','collecting books', 'scuba diving');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','employment','cooking');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','new job','acting', 'dancing');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','friends','RPG', 'anime');
INSERT INTO table_name (last_name,first_name,email,gender,birthday,profession,location,status,seeking,interest1,interest2) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','nothing','poetry', 'screenwriting');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Toth','Anne','Anne_Toth@leapinlimos.com','F','1969-11-18', 'Artist','San Fran, CA');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Manson','Anne','am86@objectville.net','F','1977-08-09', 'Baker','Seattle, WA');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Hardy','Anne','anneh@b0tt0msup.com','F','1963-04-18', 'Teacher','San Fran, CA');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Parker','Anne','annep@starbuzzcoffee.com','F','1983-01-10', 'Student','San Fran, CA');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Blunt','Anne','anneblunt@breakneckpizza.com','F','1959-10-09', 'Web Designer','San Fran, CA');
INSERT INTO  table_name (last_name,first_name,email,gender,birthday, profession,location) VALUES ('Jacobs','Anne','anne99@objectville.net','F','1968-02-05', 'Computer Programmer','San Jose, CA');
