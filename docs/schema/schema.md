
## <a name="resource-user">User</a>

Stability: `prototype`

user resource

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when user was created | `"2015-01-01T12:00:00Z"` |
| **email** | *email* | email address of user | `"username@example.com"` |
| **gender** | *string* | gender of user | `"example"` |
| **id** | *string* | unique identifier of user | `"example"` |
| **name** | *string* | name of user | `"example"` |
| **updated_at** | *date-time* | when user was updated | `"2015-01-01T12:00:00Z"` |

### <a name="link-POST-user-/users">User Create</a>

Create a new user.

```
POST /users
```


#### Curl Example

```bash
$ curl -n -X POST http://localhost/users \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "example",
  "name": "example",
  "email": "username@example.com",
  "gender": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-DELETE-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Delete</a>

Delete an existing user.

```
DELETE /users/{user_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE http://localhost/users/$USER_ID \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "example",
  "name": "example",
  "email": "username@example.com",
  "gender": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Info</a>

Info for existing user.

```
GET /users/{user_id}
```


#### Curl Example

```bash
$ curl -n http://localhost/users/$USER_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "example",
  "name": "example",
  "email": "username@example.com",
  "gender": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users">User List</a>

List existing users.

```
GET /users
```


#### Curl Example

```bash
$ curl -n http://localhost/users
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": "example",
    "name": "example",
    "email": "username@example.com",
    "gender": "example",
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### <a name="link-PATCH-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Update</a>

Update an existing user.

```
PATCH /users/{user_id}
```


#### Curl Example

```bash
$ curl -n -X PATCH http://localhost/users/$USER_ID \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "example",
  "name": "example",
  "email": "username@example.com",
  "gender": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```


