ALTER DATABASE ajaramillo208 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS family;

CREATE TABLE profile (
	profileId BINARY(16) NOT NULL,
	profileName VARCHAR (128) NOT NULL,
	profileType VARCHAR(32) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	profileAddress VARCHAR(128) NOT NULL,
	UNIQUE (profileEmail),
	PRIMARY KEY (profileId)
);

