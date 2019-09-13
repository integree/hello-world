-- DROP DATABASE tpass1;
-- DROP DATABASE tpass1_model;
-- DROP DATABASE tpass1_backup;
-- DROP DATABASE tpass1_dev;

CREATE DATABASE tpass1 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE tpass1_model CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE tpass1_backup CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE tpass1_dev CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- DROP USER 'tpass1'@'localhost';
-- DROP USER 'tpass1_dev'@'localhost';

CREATE USER 'tpass1'@'localhost' IDENTIFIED WITH mysql_native_password;
SET PASSWORD FOR 'tpass1'@'localhost' = 'pass';

CREATE USER 'tpass1_dev'@'localhost' IDENTIFIED WITH mysql_native_password;
SET PASSWORD FOR 'tpass1_dev'@'localhost' = 'pass';

GRANT ALL PRIVILEGES ON tpass1.* TO 'tpass1'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON tpass1_model.* TO 'tpass1'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON tpass1_backup.* TO 'tpass1'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON tpass1_dev.* TO 'tpass1_dev'@'localhost' WITH GRANT OPTION;