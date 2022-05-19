# E-Commerce MySQL Database
This setup file creates a database to store all data needed to run an instance of an e-commerce website.

The `setup.sql` file contains all of the instructions to set up the MySQL database. To run this in a container, only two environment variables must be set. An optional MYSQL_USER and MYSQL_PASSWORD can be assigned if you do not wish to use the root user. 

```
MYSQL_ROOT_PASSWORD=password
MYSQL_DATABASE=e_commerce_data
```

After building the docker image run `docker run -d --env-file ./.env image_name`. The database can be accessed directly while the container is running. Run `docker exec -it container_name bash` to access the command line, though using Docker's built-in CLI tool on the containers page is a good alternative. On first run, it may take a bit for MySQL init to finish, so check logs and make sure it has finished before moving to next step. Once in the container, run `mysql db_name -u user -p`, replacing `user` and `db_name` with the set environment variables. Enter your password, and query away.