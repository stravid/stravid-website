all:
	tychus "make server" -a 4000 -p 5000 -x public

server: Gemfile.lock
	bundle exec jekyll --server

Gemfile.lock: Gemfile
	bundle install
