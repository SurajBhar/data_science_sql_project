-- Drop existing tables in reverse dependency order
DROP TABLE IF EXISTS DATASETS;
DROP TABLE IF EXISTS PROJECTS;
DROP TABLE IF EXISTS TEAM_MEMBERS;
DROP TABLE IF EXISTS SKILLS;
DROP TABLE IF EXISTS GENDERS;
DROP TABLE IF EXISTS OFFICES;

-- Reference table for gender
CREATE TABLE GENDERS (
  GENDER_ID CHAR(1) NOT NULL PRIMARY KEY,
  LABEL VARCHAR(10) NOT NULL UNIQUE
);

-- Offices table
CREATE TABLE OFFICES (
  OFFICE_ID CHAR(9) NOT NULL PRIMARY KEY,
  LOCATION_NAME VARCHAR(50) NOT NULL UNIQUE
);

-- Skills table
CREATE TABLE SKILLS (
  SKILL_ID CHAR(9) NOT NULL PRIMARY KEY,
  SKILL_NAME VARCHAR(30) NOT NULL UNIQUE
);

-- Main Team Members table
CREATE TABLE TEAM_MEMBERS (
  MEMBER_ID CHAR(6) NOT NULL PRIMARY KEY,
  FIRST_NAME VARCHAR(20) NOT NULL,
  LAST_NAME VARCHAR(20) NOT NULL,
  EMAIL VARCHAR(50) NOT NULL UNIQUE,
  AGE INT CHECK (AGE >= 18 AND AGE <= 70),
  GENDER_ID CHAR(1),
  JOIN_DATE DATE,
  ROLE VARCHAR(30),
  SKILL_ID CHAR(9),
  OFFICE_ID CHAR(9),
  FOREIGN KEY (GENDER_ID) REFERENCES GENDERS(GENDER_ID),
  FOREIGN KEY (SKILL_ID) REFERENCES SKILLS(SKILL_ID),
  FOREIGN KEY (OFFICE_ID) REFERENCES OFFICES(OFFICE_ID)
);

-- Projects table
CREATE TABLE PROJECTS (
  PROJECT_ID CHAR(6) NOT NULL PRIMARY KEY,
  PROJECT_NAME VARCHAR(50) NOT NULL,
  DOMAIN VARCHAR(30),
  START_DATE DATE,
  LEAD_ID CHAR(6),
  FOREIGN KEY (LEAD_ID) REFERENCES TEAM_MEMBERS(MEMBER_ID)
);

-- Datasets table
CREATE TABLE DATASETS (
  DATASET_ID CHAR(6) NOT NULL PRIMARY KEY,
  DATASET_NAME VARCHAR(50),
  SIZE_MB INT CHECK (SIZE_MB >= 0),
  CREATED_DATE DATE,
  PROJECT_ID CHAR(6),
  FOREIGN KEY (PROJECT_ID) REFERENCES PROJECTS(PROJECT_ID)
);
