EndecaTuneup
============

Adds Tuneup instrumentation for Endeca calls that correctly report them in the
model layer


Install
=======

1. Install TuneUp if you haven't already done so:

		sudo gem install fiveruns_tuneup

2. Add the gem to your Rails config (this must be done in environment.rb as it won't load from development.rb):

		config.gem fiveruns_tuneup

3. Install the plugin:

		script/plugin install git://github.com/primedia/endeca_tuneup.git

4. Profit!

Copyright (c) 2009 Rein Henrichs, released under the MIT license
