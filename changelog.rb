require 'yaml'
require 'pathname'
require 'rubygems'
require 'sinatra'
require 'hpricot'
require 'RedCloth'

configure do
	CONFIG = YAML.load_file(File.join(File.dirname(__FILE__), "config/config.yml"))
	CHANGELOG = Pathname.new(CONFIG["application"]["changelog_file"])
	
	# Changelog Data Model
	class Changelog
		
	end
	
	# Changelog Entry Model
	class Entry
		attr_accessor :date, :body
	end
end

helpers do

end

get "/" do
	@changelog = parse_changelog
end