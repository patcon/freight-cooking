Description
===========

This repo is intended to help provide a common development context for anyone wishing to contibute to the [chef-freight cookbook](https://github.com/patcon/chef-freight) for Opscode Chef.

# What problems does this approach aim to solve?

 * We each spend time setting up a dev environment for developing each cookbook. We should share.
 * We shouldn't need to laboriously explain context on quirky behaviour (unless it's an explanation of why we've arrived at work with no pants). We should be able to say "Spin up my environment at commit af2c21e2a2 and run `sudo toomanyclowns -v` and check out the errors. Any idea what's causing that?"

Requirements
============

Tools that this project was created in mind with. (My current verions are specified for transparency, but you can omit that to simply get the most recent ones.)

I do all my development on OSX, but any *nix system should be smooth sailing. Windows may be... unsmooth... like waterfalls and schooner-devouring whirlpools. And probably laser-sharks.

Required: [Vagrant](https://github.com/mitchellh/vagrant), [Librarian](https://github.com/applicationsonline/librarian)

    $ sudo gem install vagrant   -v 0.8.7
    $ sudo gem install librarian -v 0.0.12

Recommended: [Chef](https://github.com/opscode/chef) (for knife command-line tool), [Vagrant Snap](https://github.com/t9md/vagrant-snap), [Hub](https://github.com/defunkt/hub) (Git + Hub = GitHub)

    $ sudo gem install chef         -v 0.10.4
    $ sudo gem install vagrant-snap -v 0.09

    $ sudo curl http://defunkt.io/hub/standalone -sLo /smthng/on/PATH/hub && sudo chmod 755 /smthng/on/PATH/hub
    $ alias git=hub

Usage
=====

    $ git fork patcon/chef-freight    # Forks my cookbook repo to your Github account
    $ git fork patcon/freight-cooking # Forks this dev repo to your Github account
    $ git clone -p freight-cooking    # Clones your new dev repo via SSH
    $ cd freight-cooking
    $ sed -ie 's/yourusername/patcon/g' .gitmodules # Points submodule to your cookbook repo
    $ git submodule init && git submodule update    # Pulls in outside submodules (yours)
    $ librarian-chef install          # Installs cookbooks specified in Cheffile.lock
    $ vagrant up
    $ vagrant ssh_config >> ~/.ssh/config
    $ ssh freight-cooking
