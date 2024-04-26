USE github;

CREATE TABLE `repositories` (
  `repo_id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `html_url` text NOT NULL,
  `langauge` varchar(10) NOT NULL,
  `has_ci_cd` tinyint(1) NOT NULL,
  `num_collaborators` int DEFAULT NULL,
  PRIMARY KEY (`repo_id`)
);

CREATE TABLE `commit_messages` (
  `repo_id` int DEFAULT NULL,
  `messages` text,
  `commit_url` text,
  `commit_date` date DEFAULT NULL,
  `num_files_changed` int DEFAULT NULL,
  KEY `repo_id` (`repo_id`),
  CONSTRAINT `commit_messages_repo_id_fk` FOREIGN KEY (`repo_id`) REFERENCES `repositories` (`repo_id`) ON DELETE CASCADE
);