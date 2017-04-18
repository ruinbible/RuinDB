-- System Privileges
--GRANT CREATE USER, DROP USER, DROP ANY TABLE, SELECT ANY TABLE, CREATE ANY TABLE, BACKUP ANY TABLE TO c##leejinho;



-- 

-- Confirming Privileges Granted
SELECT * FROM role_sys_privs; --Sytem privileges granted to roles
SELECT * FROM role_tab_privs; --Table privileges granted to roles
SELECT * FROM user_role_privs; --Roles accessible by the user
SELECT * FROM user_tab_privs_recd; --Object privileges granted to the user
SELECT * FROM user_col_privs_made; --Object privileges granted on the columns of the users objects
SELECT * FROM user_col_privs_recd; --Object privileges granted to the user on specific columns
SELECT * FROM user_sys_privs; --System privileges granted to the user

-- Role
CREATE ROLE c##usermanager;
GRANT CREATE USER, DROP USER TO c##usermanager;

CREATE ROLE tablemanager;
GRANT CREATE ANY TABLE, DROP ANY TABLE, BACKUP ANY TABLE, SELECT ANY TABLE TO tablemanager;

GRANT usermanager, tablemanager TO c##leejinho;
