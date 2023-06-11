install:
	which gem || sudo apt install -y rubygems
	gem install jekyll bundler
	bundle install

serve:
	bundler exec jekyll serve
