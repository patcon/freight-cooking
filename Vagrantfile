Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.define "freight-cooking"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "freight"
 
    # chef.json = {
    #   :mysql_password => "foo"
    # }
  end
end
