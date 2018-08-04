.PHONY: reset
reset:
	ansible windowsreset -i hosts -m win_ping

.PHONY: ping
ping:
	ansible windows -i hosts -m win_ping

.PHONY: run
run:
	ansible-playbook -i hosts site.yml

.PHONY: try
try:
	ansible-playbook -i hosts site.yml --tags "try"

