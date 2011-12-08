Vagrant::Config.run do |config|
  config.vm.define       "freight-cooking"

  config.vm.box_url    = "http://files.vagrantup.com/lucid64.box"
  config.vm.box        = "lucid64"

  config.vm.forward_port "web", 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "freight"
    chef.add_recipe "vim"
 
    # chef.json = {
    #   :mysql_password => "foo"
    # }
  end
end
