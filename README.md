Couchbase Sandbox
=================

# Running

You should need nothing installed on your machine except Docker. Type:

```
docker run --rm -p 8091-8095:8091-8095 -p 11210:11210 $(docker build -q --no-cache .)
```

(Replace "6.0.1" with the version of Couchbase Server you wish to explore.)

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
