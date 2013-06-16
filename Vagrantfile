# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32-gui"

  config.vm.provision :shell, :path => "cookbook/php5.sh"
  config.vm.provision :shell, :path => "cookbook/curl.sh"
  config.vm.provision :shell, :path => "cookbook/composer.sh"
  config.vm.provision :shell, :path => "cookbook/behat.sh"
  #config.vm.provision :shell, :path => "cookbook/gui.sh"
  #config.vm.provision :shell, :path => "cookbook/firefox.sh"
  config.vm.provision :shell, :path => "cookbook/java.sh"
  config.vm.provision :shell, :path => "cookbook/selenium.sh"

  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    vb.gui = true
  end
end
