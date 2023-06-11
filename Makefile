install:
	which gem || sudo apt install -y rubygems
	gem install jekyll bundler
	bundle install

serve:
	which bundler || ${MAKE} install
	bundler exec jekyll serve
