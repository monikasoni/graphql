# graphql
If you want to experiment with own setup of GraphQL Client/Server. Use this Dockerfile, you would have instances of Client Server and query IDE up and running. It uses python implementation https://github.com/howtographql/graphql-python.git, which comes with preloaded schema.

Build Image 

docker build -t gql-python 

Run container

docker run -d --name my-gql-python -p 127.0.0.1:8000:8000 gql-python

Browse http://127.0.0.1:8000

Example Queries
 
mutation {
  createUser(username:"mrathor",password:"-----",email:"mrathor@gmail.com") {
  user {
    id,
    username
  }
 }
}
 
query {
  users {
    id
    username
  }
}

