USE  github;

-- Calculate velocity

-- SELECT repo_id, num_commits/num_days as velocity
-- FROM (
-- 	SELECT  repo_id, COUNT(messages) AS num_commits, MIN(commit_date) AS first_commit, MAX(commit_date) AS last_commit,
-- 	DATEDIFF(MAX(commit_date), MIN(commit_date)) AS num_days
-- 	FROM commit_messages GROUP BY repo_id ORDER BY num_commits ASC
-- ) temp
-- ORDER BY velocity; 

-- Calculate file changed

-- SELECT r.repo_id, r.langauge, r.has_ci_cd, r.num_collaborators, 
-- c.total_code_change / c.num_commits AS code_rate_by_commits,
-- c.total_code_change / CASE WHEN r.num_collaborators = 0 THEN 1 ELSE r.num_collaborators END AS code_rate_by_collab,
-- c.num_commits / c.num_days velocity
-- FROM repositories r
-- INNER JOIN (
-- SELECT repo_id, COUNT(messages) AS num_commits, SUM(num_files_changed) AS total_code_change,
--  MIN(commit_date) AS first_commit, MAX(commit_date) AS last_commit,
--  DATEDIFF(MAX(commit_date), MIN(commit_date)) AS num_days
-- FROM commit_messages
-- GROUP BY repo_id
-- ) as c
-- ON r.repo_id = c.repo_id
DELETE FROM repositories;

