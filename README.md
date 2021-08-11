# SDC

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
Backend work on catwalk, an e-commerce product platform.

## Technologies
Project is created with:
* Bluebird version: 3.7.2
* Postgres version: 1.0.2

## Setup
### Seed Initial Database
* Prepare CSV files to seed database.
* If no database, create a database.
* Change copy file path from schema.sql to seed files in src/server/db/seed
```
$ npm run reset
$ npm run seed
```

### Initialize project
To run this project, install it locally using npm:

```
$ npm install
$ npm start
```


