# Xray server 
a collection of simple ansible roles to create a xray server. Also includes some necessary secutiry improvments(thanks to https://github.com/geerlingguy/ansible-role-security) 

## Installation
In order for site.yml playbook to work one need the following varibales:

```yml
---
# Xray server config
xray_uuid: my_uuid
xray_private_key: my_private_key
xray_short_id: my_short_id

# Deploy user
deploy_user: my_custom_user_name
# Generate with `make generate_hashed_password`
deploy_password: my_generated_hash
ssh_public_key_files:
  - my_id_rsa_server_key
```

In addition to the required vars above one can use all avaible vars from https://github.com/geerlingguy/ansible-role-security, example:

```yml
security_ssh_port: 1234
security_ssh_password_authentication: "no"
security_ssh_permit_root_login: "no"
security_ssh_usedns: "no"
security_ssh_permit_empty_password: "no"
security_ssh_challenge_response_auth: "no"
security_ssh_gss_api_authentication: "no"
security_ssh_x11_forwarding: "no"
security_fail2ban_enabled: true

security_sudoers_passwordless: [my_custom_user_name]
security_autoupdate_enabled: false
```
