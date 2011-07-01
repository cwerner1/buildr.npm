#!/usr/bin/env coffee

# Requires
cson = require 'cson'
buildr = require __dirname+'/../lib/buildr.coffee'
cwd = process.cwd()

# Parse the config file
CSON.parseFile "#{cwd}/buildr.cson", (err,config) ->
	throw err if err
	myBuildr = buildr.createInstance(config)
	myBuildr.process (err) ->
		throw err if err