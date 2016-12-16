hhvm: hhvm-debian

hhvm-debian: gpg-key debian-repository install systemd composer ini

hhvm-ubuntu: gpg-key ubuntu-repository install systemd composer ini


gpg-key:
	ansible-playbook main.yml -i localhost -t hhvm_gpg_key

debian-repository:
	ansible-playbook main.yml -i localhost -t hhvm_debian_repository

ubuntu-repository:
	ansible-playbook main.yml -i localhost -t hhvm_ubuntu_repository

install:
	ansible-playbook main.yml -i localhost -t hhvm_install

debug:
	ansible-playbook main.yml -i localhost -t hhvm_debug

systemd:
	ansible-playbook main.yml -i localhost -t hhvm_systemd

composer:
	ansible-playbook main.yml -i localhost -t hhvm_composer

ini:
	ansible-playbook main.yml -i localhost -t hhvm_ini
