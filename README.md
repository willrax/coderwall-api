# coderwall-api

A simple gem that allows you to access User Profiles on [Coderwall](http://coderwall.com)

## Installation

First install the gem:

	gem install coderwall-api

or add to your bundler
	
	gem 'coderwall-api'
	
then you're ready to roll.

## Usage

First step is to fire up a new client to use. At this point the only available action is to check someones profile. But this will be the core for any future needs.

	cw = Coderwall::Client.new

Now you can access a profile. 

	profile = cw.profile('willrax')
	
This will return to you a Hash with method style access to keys.

	profile.location => "Sydney"
	profile.accounts => {:github=>"willrax"}
	profile.accounts.github => "willrax"
	
You can do things like:

	profile.accounts.each do |k,v|
		puts "#{profile.username} is a member of #{k}"
	end
	
	=> willrax is a member of github


## Contributing to coderwall-api
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Will. See LICENSE.txt for
further details.

[![endorse](http://api.coderwall.com/willrax/endorse.png)](http://coderwall.com/willrax)

