This is the API for a voice message system.


API Endpoints
-----------------

**All endpoints are JSON**

GET / <br/>
Returns a status check


GET /users <br/>
Get a list of users

GET /users/:id <br/>
Get a single user

POST /users <br/>
Create a new user


GET /voice_messages?for=:user_id <br/>
Get a list of voice messages for a user

GET /voice_messages/:id <br/>
Get a single voice message

POST /voice_messages <br/>
Create a new voice message


Objects Contracts
------------------

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