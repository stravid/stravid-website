---
id: 26
outputs:
  - /en/coffeescript-and-ruby-development-setup-on-osx-lion/index.html
  - /26/index.html
language: en
title: CoffeeScript and Ruby Development Setup on OSX Lion
description: An opinionated CoffeeScript and Ruby development setup guide.
---
This article shows you how to set up a modern development environment for CoffeeScript and Ruby. It assumes you have a fresh installation of Lion. If that's not the case, you may have to alter or skip some steps.

I'm opinionated, which means you may not like my choices. That's okay, there are a million possible setups to develop for CoffeeScript and Ruby. This one works great for me.

## Components
* [GCC](#gcc)
* [Homebrew](#homebrew)
* [rbenv](#rbenv)
* [ruby-build](#ruby-build)
* [Ruby 1.9.2](#ruby)
* [Bundler](#bundler)
* [NodeJS](#nodejs)
* [npm](#npm)
* [CoffeeScript](#coffeescript)

This article is not a guide for any of these components. It only covers basics needed to install it and get started. If you want to educate yourself, go to the projects websites and read about it. You will learn a lot.

## <a id="gcc">GCC</a>
In order to compile our Ruby versions later on you need GCC. Unfortunately the new version of XCode doesn't come with GCC anymore. The fastest way to get GCC is to go [here][1] and download the according package for Lion.

Once you have the package, simply install it. You can test you installation by typing `gcc` into your terminal.
You should see something like this:

    i686-apple-darwin11-llvm-gcc-4.2: no input files

## <a id="homebrew">Homebrew</a>
Homebrew is a great piece of software and calls itself "The missing package manager for OSX". And that's the reason you install it, you want an easy way to install development tools.

For install instructions head over to Homebrews [website][2]. If that is to much work, paste and execute this line into your terminal to install Homebrew:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

Update Homebrew to get all available packages:

    brew update

## <a id="rbenv">rbenv</a>
If you work with Ruby you probably want specific Ruby versions for your projects. [rbenv][3] is here to manage your different Ruby versions.

To install rbenv you use Homebrew:

    brew install rbenv

Now you just need to add a little line to our bash profile:

    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

## <a id="ruby-build">ruby-build</a>
With [ruby-build][4] it's very easy to install Ruby versions. It also works great with rbenv since both tools are written by the brilliant [Sam Stephenson][5].

To install ruby-build run this in your shell:

    brew install ruby-build

## <a id="ruby">Ruby 1.9.2</a>
In order to demonstrate how to use rbenv I will install Ruby 1.9.2, but you can pick any other Ruby version you want. You get a list of all available versions by running `rbenv install`.

To install Ruby 1.9.2 you pass the correct third argument to the command:

    rbenv install 1.9.2-p290

rbenv lets you switch Ruby versions on a global, local and shell basis. I want to use Ruby 1.9.2 as default unless a project specifically requires a different version:

    rbenv global 1.9.2-p290

This command sets Ruby 1.9.2 as the global Ruby version. After running it you can check our Ruby version with `ruby --version`. You should see this:

    ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin11.2.0]

## <a id="bundler">Bundler</a>
[Bundler][6] is great for managing your Ruby gem dependencies. Let's install it:

    gem install bundler

Now you have to run `rbenv rehash` to tell rbenv about the new binary. This is the only thing you have to remember: Every time you install a new binary, you have to run `rbenv rehash`.

If you don't want to fill up your SSD space with docs, add this line to your `~/.gemrc` file:

    gem: --no-ri --no-rdoc

Remember to run commands always through Bundler if you are using it in a project. Lets say you have a Rails project and want to run your specs, to do this don't just type `rake spec`. Instead use Bundler to pick up the correct local gem version:

    bundle exec rake spec

## <a id="nodejs">NodeJS</a>
Homebrew is once again the easiest way to install something. In this case it's [Node][7]:

    brew install node

The second and last step is to add the node path to your environment. You can do this by running this:

    echo 'export NODE_PATH=/usr/local/lib/node_modules' >> ~/.bash_profile

## <a id="npm">npm</a>
[npm][8] is the package manager for node modules. To install it you run:

    curl http://npmjs.org/install.sh | sh

## <a id="coffeescript">CoffeeScript</a>
[CoffeeScript][9] is awesome. It's also used buy a lot of different tools. So you want to install it globally and not only on a project base. To do this use the `-g` flag of npm:

    npm install coffee-script -g

To verify that everything worked, check your CoffeeScript version with `coffee -v`.

[1]: https://github.com/kennethreitz/osx-gcc-installer
[2]: http://mxcl.github.com/homebrew/
[3]: http://rbenv.org/
[4]: https://github.com/sstephenson/ruby-build
[5]: http://sstephenson.us/
[6]: http://gembundler.com/
[7]: http://nodejs.org/
[8]: http://npmjs.org/
[9]: http://coffeescript.org/
