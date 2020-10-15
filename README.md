# README

**Versions required to run app:**
- Ruby 2.6.3
- Rails 6.0.3.4
- db v4.4.1

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
    URL: http://localhost:3000/api/users
    Method: GET
    Result: 


    
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


