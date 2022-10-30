# PostgreSQL Database Exercise

This repository consists of the exercise **SQL** files for the PostgreSQL Database.

The problems are derived from the [PostgreSQL Exercises](https://pgexercises.com/gettingstarted.html).


## How to run the project.

- To create the database rename the **.env.example** file to **.env** file.
- Set the variables according to your machine.
- Then run the following commands.

```shell
sudo chmod +x initializers/scripts/*
```

```shell
bash initializers/scripts/full.sh
```

- The script **full.sh** run all the scripts from creation to table data population.
- This script only omit **delete.sh** file.
- To delete the whole setup just run the following commands.

```shell
bash initializers/scripts/delete.sh
```


## Dependencies

- PostgreSQL Server is needed.


> This project is open for all. Feel free to pull and use according to your own.