require 'librarian/chef/integration/knife'
current_dir = File.dirname(__FILE__)

cookbook_path = [ Librarian::Chef.install_path, "{current_dir}/../cookbooks-in-progress" ]

cookbook_copyright       'Myplanet Digital'
cookbook_email           'devops@myplanetdigital.com'
cookbook_license         'apachev2'
