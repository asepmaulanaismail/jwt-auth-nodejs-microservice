# JWT Authentication Microservice with NodeJS & MongoDB

This is simple microservice for JWT Authentication with NodeJS & MongoDB.

# How to Use

### Running with Node & Nodemon

```
git clone https://github.com/asepmaulanaismail/jwt-auth-nodejs-microservice
cd jwt-auth-nodejs-microservice/
node server.js
```

or

```
git clone https://github.com/asepmaulanaismail/jwt-auth-nodejs-microservice
cd jwt-auth-nodejs-microservice/
nodemon server.js
```

### Running with Docker

```
git clone https://github.com/asepmaulanaismail/jwt-auth-nodejs-microservice
cd jwt-auth-nodejs-microservice/
sudo docker build -t jwt-auth-nodejs:latest .
sudo docker run -d -p 8080:8080 jwt-auth-nodejs
```

# API List:

## Basic Route

Route to show a random message

GET: `localhost:8080/`

Response:

```
Hello! The API is at http://localhost:8080/api
```

## Setup

Create a simple user

GET:   `localhost:8080/setup`

Response:

```Javascript
{
    "success": true
}
```

## Authenticate

Route to authenticate a user

POST:   `localhost:8080/api/authenticate`

Params:

```Javascript
{
    "username": "asepmaulanaismail",
    "password": "asep123!!"
}
```

Response:

```Javascript
{
    "success": true,
    "message": "Enjoy your token!",
    "token": "<YOUR TOKEN HERE>"
}
```

## Basic API

Route to show a random message

GET:   `localhost:8080/api`

Params:

```Javascript
{
    "token": "<YOUR TOKEN HERE>"
}
```

Response:

```Javascript
{
    "message": "Welcome to the coolest API on earth!"
}
```

## Users API

Route to return all users

GET:   `localhost:8080/api/users`

Params:

```Javascript
{
    "token": "<YOUR TOKEN HERE>"
}
```

Response:

```Javascript
[
    {
        "_id": "5a5862d28c16852c84d79d78",
        "username": "asepmaulanaismail",
        "password": "asep123!!",
        "admin": true,
        "__v": 0
    }
]
```