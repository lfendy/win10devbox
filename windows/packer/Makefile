all: validate clean build install

validate:
	packer validate eval-win10x64-enterprise.json

build:
	packer build -only=virtualbox-iso win10x64-enterprise.json
	packer build -only=vagrant-cloud-upload win10x64-enterprise.json

clean:
	rm -rf builds

clean-all: clean
	rm -rf packer_cache

install:
	vagrant box add win10x64-enterprise ./builds/vagrant/win10x64-enterprise-virtualbox.box --force || true
	vagrant box list | grep ferrarimarco/windows
	@echo Boxes have been installed. Run make clean-all to reclaim disk space.
