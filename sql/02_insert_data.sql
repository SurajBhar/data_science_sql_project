-- Insert values into GENDERS
INSERT INTO GENDERS (GENDER_ID, LABEL) VALUES
('M', 'Male'),
('F', 'Female');

-- Insert values into OFFICES
INSERT INTO OFFICES (OFFICE_ID, LOCATION_NAME) VALUES
('OFF001', 'Berlin AI Hub'),
('OFF002', 'Heidelberg Data Lab');

-- Insert values into SKILLS
INSERT INTO SKILLS (SKILL_ID, SKILL_NAME) VALUES
('SKL001', 'Machine Learning'),
('SKL002', 'Data Engineering'),
('SKL003', 'NLP'),
('SKL004', 'Computer Vision');

-- Insert values into TEAM_MEMBERS
INSERT INTO TEAM_MEMBERS (
  MEMBER_ID, FIRST_NAME, LAST_NAME, EMAIL, AGE, GENDER_ID, JOIN_DATE, ROLE, SKILL_ID, OFFICE_ID
) VALUES
('MB001', 'Suraj', 'Bhardwaj', 'suraj.unisiegen@gmail.com', 28, 'M', DATE('2023-04-01'), 'Data Scientist', 'SKL001', 'OFF001'),
('MB002', 'Ankush', 'Bhardwaj', 'ankush.bhardwaj@gmail.com', 29, 'M', DATE('2022-10-15'), 'ML Engineer', 'SKL002', 'OFF002'),
('MB003', 'Vijay', 'Kumar', 'vijay.kumar@gmail.com', 24, 'M', DATE('2024-01-12'), 'Junior Data Analyst', 'SKL003', 'OFF002'),
('MB004', 'Sujata', 'Kumari', 'sujata.kumari@gmail.com', 30, 'F', DATE('2023-05-21'), 'AI Researcher', 'SKL004', 'OFF001'),
('MB005', 'Soniya', 'Bhardwaj', 'soniya.bhardwaj@gmail.com', 32, 'F', DATE('2021-07-01'), 'Data Engineer', 'SKL002', 'OFF002');

-- Insert values into PROJECTS
INSERT INTO PROJECTS (
  PROJECT_ID, PROJECT_NAME, DOMAIN, START_DATE, LEAD_ID
) VALUES
('PRJ01', 'Cancer Risk Prediction', 'Healthcare AI', DATE('2023-06-01'), 'MB001'),
('PRJ02', 'Real-time Analytics Pipeline', 'Infra', DATE('2023-01-10'), 'MB002'),
('PRJ03', 'Chatbot Training', 'Customer NLP', DATE('2024-03-01'), 'MB003');

-- Insert values into DATASETS
INSERT INTO DATASETS (
  DATASET_ID, DATASET_NAME, SIZE_MB, CREATED_DATE, PROJECT_ID
) VALUES
('DST01', 'TCGA Gene Data', 2048, DATE('2023-06-15'), 'PRJ01'),
('DST02', 'Log Aggregation Set', 5120, DATE('2023-02-01'), 'PRJ02'),
('DST03', 'Chat History Dump', 1024, DATE('2024-03-10'), 'PRJ03');
