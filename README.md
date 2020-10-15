# README

**Versions required to run app:**
- Ruby 2.6.3
- Rails 6.0.3.4
- mongo db v4.4.1

**Gem used:**
- gem 'mongoid', '~> 7.0.5'

**Steps to setup project in local:**
- git clone repo_url
- bundle install
- rails db:seed

**List of Controllers**
- users
- typeahead

**List of Model**
- User

**List of APIs with headers & request parameters**

**API to get list of all Users**
- URL: http://localhost:3000/api/users
- Method: GET
- Result: 


    
        [
            {
                "_id": {
                    "$oid": "5f87d43f67c6111c002c8373"
                },
                "email": "ae@relativity.com",
                "firstName": "albert",
                "lastName": "einstein"
            },
            {
                "_id": {
                    "$oid": "5f87d43f67c6111c002c8374"
                },
                "email": "mc@radiation.com",
                "firstName": "marie",
                "lastName": "curie"
            },
            {
                "_id": {
                    "$oid": "5f87d43f67c6111c002c8375"
                },
                "email": "in@gravity.com",
                "firstName": "issac",
                "lastName": "newton"
            },
            {
                "_id": {
                    "$oid": "5f87d43f67c6111c002c8376"
                },
                "email": "gg@astronomy.com",
                "firstName": "galileo",
                "lastName": "galilei"
            }
        ]


**API to get specific user by id**

- URL: http://localhost:3000/api/users/5f87d43f67c6111c002c8373
- Method: GET
- Result: 

        {
        "_id": {
            "$oid": "5f87d43f67c6111c002c8373"
        },
        "email": "ae@relativity.com",
        "firstName": "albert",
        "lastName": "einstein"
        }
        

**API to create/add user**

- URL: http://localhost:3000/api/users
- Method: POST
- Header: Content-Type - application/json
- Request parameters in body

        {
        "user": {
            "firstName": "Amit",
            "lastName": "Mehta",
            "email": "amit.mehta@tatvasoft.com"
            }
        }

- Result: 

        {
            "user": {
                "_id": {
                    "$oid": "5f87eba967c61120ec677c4b"
                },
                "email": "amit.mehta@tatvasoft.com",
                "firstName": "Amit",
                "lastName": "Mehta"
            },
            "message": "User created successfully."
        }
        

**API to update user**

- URL: http://localhost:3000/api/users/5f87eba967c61120ec677c4b
- Method: PUT
- Header: Content-Type - application/json
- Request parameters in body

        {
            "user": {
                "firstName": "Amit2",
                "lastName": "Mehta2",
                "email": "amit.mehta2@tatvasoft.com"
            }
        }
        

- Result:

        {
            "user": {
                "_id": {
                    "$oid": "5f87eba967c61120ec677c4b"
                },
                "email": "amit.mehta2@tatvasoft.com",
                "firstName": "Amit2",
                "lastName": "Mehta2"
            },
            "message": "User updated successfully."
        }
        

**API to delete user**

- URL: http://localhost:3000/api/users/5f87eba967c61120ec677c4b
- Method: DELETE
- Result:

        {
            "message": "User deleted successfully."
        }
        

**API to search users**

- URL: http://localhost:3000/api/typeahead/alb
- Method: GET
- Result:

        [
            {
                "_id": {
                    "$oid": "5f87d43f67c6111c002c8373"
                },
                "email": "ae@relativity.com",
                "firstName": "albert",
                "lastName": "einstein"
            }
        ]