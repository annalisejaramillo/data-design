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

CREATE TABLE course (
	courseId BINARY(16) NOT NULL ,
	courseProfileId BINARY(16) NOT NULL,
	courseAssignment VARCHAR(32),
	courseGrade VARCHAR(16),
	INDEX (courseProfileId),
	FOREIGN KEY (courseProfileId) REFERENCES profile(profileId),
	PRIMARY KEY (courseId)
);

CREATE TABLE family (
	familyProfileId BINARY(16),
	familyCourseID  BINARY(16),
	INDEX (familyProfileId),
	INDEX (familyCourseID),
	FOREIGN KEY (familyProfileId) REFERENCES profile(profileId),
	FOREIGN KEY (familyCourseID) REFERENCES course(courseId)
);

