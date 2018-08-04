.PHONY: ping
ping:
	ansible windows -i hosts -m win_ping

run:
	ansible-playbook -i hosts site.yml

try:
	ansible-playbook -i hosts site.yml --tags "try"
