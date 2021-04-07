# AC-ABAC

This repository contains the ABAC, policies, context handlers and experiments implementation for the Acute Care Attribute-based Access Control (AC-ABAC).

## Policies

The policies/ folder contains the rules and policies in XACML that were designed and developed for AC-ABAC. To disable a policy add the --OFF, to enable a policy remove the --OFF (This can be done with the docker-compose running). By default all the policies are enabled.

Disabling a policy.

```bash
cp policy.xml policy.xml--OFF
```

Enabling a policy.

```bash
cp policy.xml--OFF policy.xml
```

## Docker usage
The first step to be able to test the policies is to install and run the [Docker](https://www.docker.com/products/docker-desktop). The docker-compose file in this repo contains all the necessary ABAC services, a REST API to provide contextual attributes and web applications to test the requests. Moreover we use Keycloak and Netflix Zuul proxy to connect every component and protect the web applications endpoints.

1 - Change the EXTERNAL_IP in .env file. Run the command bellow and find your IP.

```bash
ifconfig -a
```

2 - Docker build and up

```bash
docker-compose build
docker-compose up
```

3 - The default is scenario 1 where every READ(GET) request is permitted. You should be able now to access django default page in http://IP_EXTERNAL/rest/acute-care-demo/call-centre. Login with username 'user1' and password 'user1'.


4 - Stop docker after tests

```bash
docker-compose down -v
```

## Policies correctness

To evaluate the correctness of each policy, scenarios were created where we change the values on PIP database.

[TODO Description]

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

#### [License](LICENSE)