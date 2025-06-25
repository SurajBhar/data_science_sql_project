-- 3. Dataset inventory with project name and size
SELECT
  D.DATASET_NAME AS "Dataset Name",
  D.SIZE_MB AS "Size (MB)",
  D.CREATED_DATE AS "Created On",
  P.PROJECT_NAME AS "Linked Project",
  P.DOMAIN AS "Domain"
FROM DATASETS D
JOIN PROJECTS P ON D.PROJECT_ID = P.PROJECT_ID
ORDER BY D.SIZE_MB DESC;
