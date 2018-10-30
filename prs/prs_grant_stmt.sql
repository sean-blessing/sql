CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;

-- create a user and grant privileges to that user
-- GRANT SELECT, INSERT, DELETE, UPDATE
-- ON prs.*
-- TO prs_user@localhost
-- IDENTIFIED BY 'sesame';