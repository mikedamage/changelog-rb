Changelog RB
================

by Mike Green

[mike.is.green@gmail.com](mailto:mike.is.green@gmail.com)

About
-------
Changelog RB arose from the need to collaborate with another agency (who doesn't understand the concept of revision control...) on a client's website.
We decided to implement a changelog to document the modifications, additions, deletions, etc. we made to the website. After deciding to use Markdown to format the log, I started thinking about cool ways to interpret and visualize the data.

Wouldn't it be cool if there were a drop-in script (PHP or a Sinatra app) that would publish the changelog as an RSS feed so the collaborators could keep track of one another's work? Bam. Changelog PHP and its sister project, Changelog RB (a Sinatra app) were born.

This project, __Changelog RB__, is a standard Sinatra app. It can be deployed using [Passenger](http://www.modrails.com/) or FastCGI, or Thin proxied to Apache, or any other way you can dream up. It has no database - all the changelog info is managed via a flat Markdown file.

Dependencies
--------------
If you don't have the access to a C compiler (i.e. Mac OS X without Developer Tools installed), you might want to look into using [Changelog PHP](http://github.com/mikedamage/changelog-php/tree), which has all its dependencies written in PHP and bundled in the /includes folder already.

* Ruby standard library
	* rss
	* yaml
	* pathname
* [RubyGems](http://rubygems.rubyforge.org)
	* [RedCloth](http://redcloth.org/)
	* [Sinatra](http://www.sinatrarb.com)