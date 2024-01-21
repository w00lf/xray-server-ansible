deploy:
	ansible-playbook -i hosts site.yml

password:=$(shell openssl rand -hex 25)
salt:=$(shell openssl rand -hex 5)
# Needed for user module, password cannot be a plain string in there
# https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module
generate_hashed_password:
	ansible all -i localhost, -m debug -a "msg={{ '$(password)' | password_hash('sha512', '$(salt)') }}"
