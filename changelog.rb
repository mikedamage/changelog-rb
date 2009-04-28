require 'yaml'
require 'pathname'
require 'rubygems'
require 'sinatra'
require 'hpricot'
require 'RedCloth'

configure do
	CONFIG = YAML.load_file(File.join(File.dirname(__FILE__), "config.yml"))
	CHANGELOG = Pathname.new(CONFIG["application"]["changelog_file"])
end

helpers do

end

get "/" do
	@changelog = parse_changelog
end