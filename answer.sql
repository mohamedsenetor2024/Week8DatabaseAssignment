
-- =====================================================
-- Week 8 Assignment: MySQL Database Backup and Restore
-- Question 1: Creating a Complete Database Backup
-- =====================================================

-- Command to create a complete backup of the sales database:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is a MySQL utility used to create database backups.
-- -u root specifies the MySQL root username.
-- -p prompts for the database password.
-- sales specifies the database to back up.
-- > redirects the backup output into a file.
-- sales_backup.sql is the output backup file.

-- Importance of regular database backups:
-- 1. Prevents accidental data loss.
-- 2. Supports disaster recovery.
-- 3. Makes database migration easier.
-- 4. Ensures business continuity.
-- 5. Protects important historical records.





-- =====================================================
-- Question 2: Backing Up All Databases
-- =====================================================

-- Command to back up all databases on the MySQL server:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- mysqldump is a MySQL utility used to create database backups.
-- -u root specifies the MySQL root username.
-- -p prompts for the database password.
-- --all-databases exports all databases on the MySQL server.
-- > redirects the backup output into a file.
-- all_databases_backup.sql is the output backup file.

-- Importance of backing up all databases before migration:
-- 1. Prevents data loss during server migration.
-- 2. Preserves important information from all databases.
-- 3. Makes database migration easier.
-- 4. Supports disaster recovery if migration fails.
-- 5. Maintains business continuity and reduces downtime.
