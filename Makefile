RUBY_VERSION ?= 3.0.0-dev

install:
	which rbenv || sudo apt install -y rbenv
	which autoreconf || sudo apt install -y autoconf
	which bison || sudo apt install -y bison
	dpkg -l | grep libyaml-dev || sudo apt install -y libyaml-dev
	# Fresh install of ruby-build plugin
	ls "$(shell rbenv root)"/plugins/ruby-build || \
		git clone https://github.com/rbenv/ruby-build.git "$(shell rbenv root)"/plugins/ruby-build
	git -C ~/.rbenv/plugins/ruby-build pull
	rbenv install --skip-existing ${RUBY_VERSION}
	rbenv local ${RUBY_VERSION}
	$(shell rbenv root)/versions/${RUBY_VERSION}/bin/gem install --user-install jekyll bundler
	GEM_HOME=~/.gem $(shell rbenv root)/versions/${RUBY_VERSION}/bin/bundle install

serve:
	GEM_HOME=~/.gem $(shell rbenv root)/versions/${RUBY_VERSION}/bin/bundler || ${MAKE} install
	GEM_HOME=~/.gem $(shell rbenv root)/versions/${RUBY_VERSION}/bin/bundler exec jekyll serve
