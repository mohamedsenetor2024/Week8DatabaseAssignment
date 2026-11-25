# Week 8 Assignment: MySQL Database Backup and Restore

## 1. Introduction

This assignment focuses on MySQL database backup operations using the `mysqldump` command-line utility. It demonstrates how database administrators can create database backups to protect important information, support disaster recovery, and facilitate database migration.

Throughout this assignment, the `sales` database is used to practice different database backup operations.

## 2. Learning Objectives

By completing this assignment, I aim to:

1. Understand the importance of database backup and recovery.
2. Use `mysqldump` to back up a single MySQL database.
3. Create backups of all databases on a MySQL server.
4. Generate data-only database backups.
5. Understand how database backups support disaster recovery and database migration.

## 3. Tools and Technologies

The following tools and technologies are used:

- **MySQL Server:** Database management system.
- **MySQL Command-Line Client:** Used to execute database commands.
- **MySQL Workbench:** Graphical interface for managing MySQL databases.
- **Visual Studio Code:** Used to write and document assignment answers.
- **Windows PowerShell / Command Prompt:** Used to execute backup commands.
- **Git and GitHub:** Used for version control and assignment submission.

## 4. Assignment Questions and Solutions

### Question 1: Creating a Complete Database Backup

**Objective:** Create a complete backup of the `sales` database before performing major database changes.

**Command:**

```bash
mysqldump -u root -p sales > sales_backup.sql
```

**Command Explanation:**

- `mysqldump`: MySQL utility for creating database backups.
- `-u root`: Specifies the MySQL root username.
- `-p`: Prompts for the MySQL password.
- `sales`: Specifies the database to back up.
- `>`: Redirects the backup output into a file.
- `sales_backup.sql`: Name of the generated backup file.

**Importance of Regular Database Backups:**

- Prevents accidental data loss.
- Supports disaster recovery.
- Protects important business information.
- Makes database migration easier.
- Ensures business continuity.

### Question 2: Backing Up All Databases

**Objective:** Create a complete backup of every database available on the MySQL server before migrating to another server.

**Command:**

```bash
mysqldump -u root -p --all-databases > all_databases_backup.sql
```

**Command Explanation:**

- `mysqldump`: MySQL database backup utility.
- `-u root`: Specifies the MySQL root username.
- `-p`: Prompts for the database password.
- `--all-databases`: Exports all databases on the MySQL server.
- `>`: Redirects the output into a backup file.
- `all_databases_backup.sql`: Name of the backup file.

**Importance of Backing Up All Databases Before Migration:**

- Prevents data loss during server migration.
- Preserves information from all databases.
- Simplifies database migration.
- Supports recovery if migration fails.
- Helps maintain business continuity and reduce downtime.

### Question 3: Data-Only Database Backup

*To be documented according to the assignment's Question 3 requirements.*

## 5. Testing and Verification

The backup commands are executed using Windows PowerShell or Command Prompt.

**Testing Question 1:**

```bash
mysqldump -u root -p sales > sales_backup.sql
```

**Testing Question 2:**

```bash
mysqldump -u root -p --all-databases > all_databases_backup.sql
```

After executing the commands:

1. Enter the MySQL root password when prompted.
2. Check whether the backup files have been generated successfully.
3. Verify that the files exist in the current working directory.
4. Inspect the generated `.sql` files to confirm that they contain backup statements and database information.

## 6. Database Restore Example

A database backup is useful only when it can be restored successfully.

The following command demonstrates how to restore the `sales` database from its backup file:

```bash
mysql -u root -p sales < sales_backup.sql
```

To restore all databases from a full-server backup:

```bash
mysql -u root -p < all_databases_backup.sql
```

**Note:** The target database must exist before restoring the single-database backup. The all-databases backup contains database creation statements when generated with the standard `mysqldump --all-databases` option.

## 7. Importance of Database Backup and Recovery

Database backup and recovery are essential responsibilities of a database administrator because they:

- Protect organizational data against unexpected failures.
- Reduce the risk of permanent data loss.
- Support disaster recovery strategies.
- Enable database migration between servers.
- Improve data availability and business continuity.

## 8. Repository Structure

The assignment files are organized as follows:

```text
Week-8-Database-Backup-Restore/
│
├── answer.sql
└── README.md
```

- `answer.sql`: Contains the answers to the assignment questions, including documented backup commands and explanations.
- `README.md`: Provides assignment documentation, objectives, command explanations, and testing procedures.

## 9. GitHub Submission

The assignment is submitted through GitHub using Git version control.

Example commands:

```bash
git add answer.sql README.md
git commit -m "Complete Week 8 MySQL Backup and Restore Assignment"
git push origin main
```

**Note:** Replace `main` with your actual branch name if your repository uses a different branch.

## 10. Conclusion

This assignment provides practical experience with MySQL database backup operations using the `mysqldump` utility. It demonstrates how to create individual database backups and full-server backups.

These skills are important for database administrators because reliable backup procedures help protect organizational information, support disaster recovery, and ensure successful database migration.

---

**Assignment:** Week 8 – MySQL Database Backup and Restore  
**Database:** `sales`  
**Backup Utility:** `mysqldump`  
**Submission Files:** `answer.sql` and `README.md`