# organia-deploy

*The dawn of the final day*

Script to deploy the OrganIA back and frontend to different environments and to
specific versions.


## Installation

If setting up reverse proxies via the included Caddy config, the following
directive must be used in /etc/caddy/Caddyfile
```
import conf.d/*
```

The project account, assumed to be named "organia", need to have 2 RSA SSH key
pairs, one for the frontend and one for the API server.
```
ssh-keygen -f ~/.ssh/id_rsa.organia-frontend
ssh-keygen -f ~/.ssh/id_rsa.organia-server
```

The public keys must be uploaded as "Deploy keys" on the GitHub repos.


With an admin account, run `sudo ./install.sh` to install the deployment script
and the Caddy config.

You can now deploy environments. See "Usage".

## Usage

- Deploy the master branch of the API to the dev environment
  ```
  organia-deploy dev organia-backend master
  ```

- Deploy a specific release of the frontend to the demo environment
  ```
  organia-deploy demo organia-frontend v1.0.3
  ```

- Deploy a specific commit of the API to the prod environment
  ```
  organia-deploy prod organia-server abcd1212
  ```
