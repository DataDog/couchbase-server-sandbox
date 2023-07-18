Couchbase Sandbox
=================

# Usage
This repository creates and sets up a couchbase image for use for [dd-trace-js](https://github.com/DataDog/dd-trace-js).  Its a simple couchbase-sandbox image with some additional setup scripts (for things like username/password setup, etc)

# Running Locally

You should need nothing installed on your machine except Docker. Type:

```
docker run --rm -p 8091-8095:8091-8095 -p 11210:11210 $(docker build -q --no-cache .)
```

(Replace "6.6.5" with the version of Couchbase Server you wish to explore.)

Then visit [http://localhost:8091/](http://localhost:8091/) for the Server user interface. The login credentials are Administrator / password. You can also
see this information by typing "docker logs couchbase-sandbox".

This image is configured as follows:

    * Couchbase Server
    * All services enabled with small but sufficient memory quotas
    * travel-sample bucket installed
    * FTS index named "hotels"
    * Admin credentials: Administrator / password
    * RBAC user with admin access to travel-sample bucket, with
      credentials admin / password


# Building and Pushing
1. Setup an access token with permissions for repositories, and substitute the key and username in the below scripts.
2. To build and push a new version to the repository, use the following commands:
```
docker login ghcr.io -u <USERNAME> -p <PASSWORD>
docker build -t ghcr.io/datadog/couchbase-server-sandbox .
docker push ghcr.io/datadog/couchbase-server-sandbox:latest
```