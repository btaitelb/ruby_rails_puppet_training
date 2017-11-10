Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-17.04'
  config.vm.provision :shell, path: 'opsgility_vm_setup.sh', privileged: false
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder 'labs/', '/home/vagrant/labs'
end
