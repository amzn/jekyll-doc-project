---
title: Install Jekyll on Windows
permalink: jekyllhowto-install-jekyll-on-windows.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

{% include tip.html content="For a better terminal emulator on Windows, use [Git Bash](https://git-for-windows.github.io/). Git Bash gives you Linux-like control on Windows." %}

## Install Ruby

First you must install Ruby because Jekyll is a Ruby-based program and needs Ruby to run.

1. Go to [RubyInstaller for Windows](http://rubyinstaller.org/downloads/).
2. Under **RubyInstallers**, download and install one of the Ruby installers (usually one of the first two options).
3. Double-click the downloaded file and proceed through the wizard to install it.

## Install Ruby Development Kit

Some extensions Jekyll uses require you to natively build the code using the Ruby Development Kit.

1. Go to [RubyInstaller for Windows](http://rubyinstaller.org/downloads/).
2. Under the **Development Kit** section near the bottom, download one of the **For use with Ruby 2.0 and above...** options (either the 32-bit or 64-bit version).
3. Move your downloaded file onto your **C** drive in a folder called something like **RubyDevKit**.
4. Extract the compressed folder's contents into the folder.
5. Browse to the **RubyDevKit** location on your C drive using your Command Line Prompt.

   To see the contents of your current directory, type <code>dir</code>. To move into a directory, type <code>cd foldername</code>, where "foldername" is the name of the folder you want to enter. To move up a directory, type <code>cd ../</code> one or more times depending on how many levels you want to move up. To move into your user's directory, type <code>/users</code>. The <code>/</code> at the beginning of the path automatically starts you at the root.

6. Type `ruby dk.rb init`
7. Type `ruby dk.rb install`

If you get stuck, see the [official instructions for installing Ruby Dev Kit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit).

<h2 id="bundler">Install the Jekyll gem</h2>

At this point you should have Ruby and Rubygem on your machine.

Now use `gem` to install Jekyll:

```
gem install jekyll
```

You can now use Jekyll to create new Jekyll sites following the quick-start instructions on [Jekyllrb.com](http://jekyllrb.com).

## Git Clients for Windows

Although you can use the default command prompt with Windows, it's recommended that you use [Git Bash](https://git-for-windows.github.io/) instead. The Git Bash client will allow you to run shell scripts and execute other Unix commands.

## Serve the Jekyll Documentation theme

1. Browse to the directory where you downloaded the Documentation theme for Jekyll.
2. Type `jekyll serve`
3. Go to the preview address in the browser. (Make sure you include the `/` at the end.)


{% include links.html %}
