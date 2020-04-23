# database-migration

*CREATE DATABASE:
1. Create Docker Account:
2. Clone database-migration repository
3. Open VS Code
        a. Make sure you’re in the right directory( Ex: PS C:\Users\MSAhuja\GitHub\database-migration\phpmyadmin> )
4. Create Docker container for database and for app (3 commands, run each one in vs code terminal)
    1. docker-compose up -d --build --force-recreate --renew-anon-volumes db
    2. docker-compose up -d --build app
    3. docker-compose up -d --build spring-boot-jpa-app
*The -d hides the actions taking place; if the code isn’t working, remove the -d so that you can see where the error is occuring * 


*LOGIN TO DATABASE USING PHPMYADMIN:
1. In a web browser type  http://localhost:8080
2. Login
        Leave the Server blank
        Username: registart
        Password: database7


*ALTERING DATABASE:
1. Now, you can make changes to the database, to insert data: 
    1. Click on the database on the right side of the screen (ex. registart)
    2. Find and click on the SQL tab on the upper panel

    3. To insert data individually: 
        a. Run the command INSERT INTO tablename VALUES (value1, value2, value3)
        For example: INSERT INTO students VALUES ('Mehak','Ahuja',12345 ,'msahuja@stu.naperville203.org', 6304325765);

    4. To insert large-amounts of data from a text file
        a. Create a text file (look at example text file in repository)
        b. Separate column values with commas
            *Not all of the values have to be filled at once, some values can be specified as null while others are inserted*
        c.
                1. Once you have your txt file, go into php and click on the table you would like to import the data to, then click IMPORT in the upper panel
                2. Select the file you want to import, keep character set at utf-8, set format to CSV (you do not need to change the format), press go
                3. You should be able to see your imported data in the tables 


*SAVING/BACKING UP DATABASE:
1. Once you’ve made changes, go back to VS Code Terminal and run this command to back up your created database:
    a. LINE OF CODE: docker-compose exec CONTAINER_NAME /usr/bin/mysqldump -u USERNAME_FOR_PHP--password=PASSWORD_FOR_PHP DATABASE_NAME> NAME_OF_BACKUP_FILE.sql
    Ex: docker-compose exec db /usr/bin/mysqldump -u registart --password=database7 registart > yourbackupfile.sql
    a. you need to name your own backup file so that your changes are stored in a different sql file
2. Push changes to GitHub 

*BUILDING THE SPRING EXAMPLE:
1. Open the api folder in IntelliJ.
2. Click on "Add Configuration". Click on the "+" icon. Select Maven.
3. Specify "clean install -DskipTests" for the Command Line field. Click on the OK button.
4. Click on the Run icon.
5. The JAR file will be built in the targets folder.

*CONNECT TO DATABASE USING SPRING API:
1. In a web browser connect to:  http://localhost:8081/api/users
2. Alternatively, download and install [Postman](https://learning.postman.com/docs/postman/launching-postman/installation-and-updates/) to make is easier to interact with the Spring API.

