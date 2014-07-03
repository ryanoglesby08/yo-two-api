This is the API for a voice message system.

Requirements
--------------------------
* Ruby 2.1.1
* Bundler
* Postgres

Setup Instructions
--------------------------
`cd` into the project's root directory

If you have rvm installed correctly and you do not have the correct version of Ruby, you will be prompted to download it.
If you need to do so, follow the instructions, then `cd .`

Install the gem dependencies with `bundle install --path=vendor/bundle`

Make sure Postgres is running.

Setup the DB with `bin/rake db:create db:migrate`

Run the server with `bin/rails s`

Hit "http://localhost:3000?format=json" in your browser to confirm its running


API Endpoints
--------------------------

**All endpoints are JSON**

GET /?format=json <br/>
Returns a status check


GET /users.json <br/>
Get a list of users

GET /users/:id.json <br/>
Get a single user

POST /users <br/>
Create a new user


GET /voice_messages.json?for=:user_id <br/>
Get a list of voice messages for a user

GET /voice_messages/:id.json <br/>
Get a single voice message

POST /voice_messages <br/>
Create a new voice message


Objects Contracts
--------------------------

### User:

Get:

```json
{
    "id": integer
    "name": string
    "created_at": datetime
    "updated_at": datetime
}
```

Creation:

```json
{
    "user": {
        "name": string (required)
    }
}
```

### Voice Message:

Get:

```json
{
    "id": integer
    "location": string,
    "from": integer,
    "to": integer
    "created_at": datetime
    "updated_at": datetime
}
```

Creation:

```json
{
    "voice_message": {
        "location": string (required),
        "from": integer (required),
        "to": integer (required),
    }
}
```