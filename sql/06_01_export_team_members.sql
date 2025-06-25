-- 1. Full list of team members with metadata (ideal for team directory report)
SELECT
  TM.MEMBER_ID AS "Member ID",
  TM.FIRST_NAME || ' ' || TM.LAST_NAME AS "Full Name",
  TM.EMAIL AS "Email",
  TM.PHONE_NUMBER AS "Phone",
  TM.ROLE AS "Role",
  S.SKILL_NAME AS "Primary Skill",
  G.LABEL AS "Gender",
  TM.AGE AS "Age",
  O.LOCATION_NAME AS "Office",
  TM.JOIN_DATE AS "Joining Date"
FROM TEAM_MEMBERS TM
JOIN SKILLS S ON TM.SKILL_ID = S.SKILL_ID
JOIN GENDERS G ON TM.GENDER_ID = G.GENDER_ID
JOIN OFFICES O ON TM.OFFICE_ID = O.OFFICE_ID
ORDER BY TM.JOIN_DATE;
