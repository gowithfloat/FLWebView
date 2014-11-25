[FLWebView](https://github.com/floatlearning/FLWebView/) [![Build Status](https://travis-ci.org/floatlearning/FLWebView.svg?branch=master)](https://travis-ci.org/floatlearning/FLWebView)
=========

[![](./float-logo.png)](http://floatlearning.com/)

This is an example Xcode project demonstrating how to use WKWebView in iOS 8 with a UIWebView fallback for earlier versions of iOS. A full discussion of this code is available [here](#). Basically, we created a [protocol](http://iosdevelopertips.com/objective-c/the-basics-of-protocols-and-delegates.html) that unifies the functionality we'd like to have in a `WebView`, and then created [categories](http://macdevelopertips.com/objective-c/objective-c-categories.html) that ensure we have the proper methods in our `UIWebView` and `WKWebView` classes. 

These are used in the [ViewController](./FLWebView/ViewController.m) `viewDidLoad` method to create a simple "`FLWebView`" and add it to the active view. The code [checks for `WKWebKit`](https://github.com/floatlearning/FLWebView/blob/master/FLWebView/ViewController.m#L29) and, if present, uses `WKWebView`. If it's not there, it defaults to `UIWebView`.

# Usage

This is an example project but you should be able to build this project with little setup. You'll need `homebrew` if you don't have it already (just enter this in the terminal):

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then you can install xctool, Facebook's neat open source Xcode build tool:

```
brew install xctool
```

After that, you can run the `test.sh` script to build and test:

```
sh test.sh
```

There you go! Of course, you can this in Xcode, but this setup is great if you want to do some continuous integration, as `Travis` already has `xctool` installed by default.

# Tools

* [travis-ci](https://travis-ci.org/) - Automated unit testing.
* [travis-lint](http://docs.travis-ci.com/user/getting-started/#Validate-Your-.travis.yml) - Local `Travis` settings validation.
* [xctool](https://github.com/facebook/xctool) - Command-line `iOS` build scripts.
* [travis-cli](https://github.com/travis-ci/travis.rb) - Command-line `Travis` tools for key encryption.
* [homebrew](http://brew.sh/) - `OS X` package management, used to install `xctool`.
* [ruby gem](https://rubygems.org/) - `Ruby` package management, used to install `travis-lint`.

# License

&copy; 2014 [Float Mobile Learning](http://floatlearning.com/). Shared under an [MIT license](https://en.wikipedia.org/wiki/MIT_License). See [license.md](./license.md) for details.
