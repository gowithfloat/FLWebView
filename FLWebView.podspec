#
# Be sure to run `pod lib lint FLWebView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FLWebView"
  s.version          = "0.1.1"
  s.summary          = "WKWebView with UIWebView fallback for iOS."

  s.description      = <<-DESC
                       This is an example Xcode project demonstrating how to use WKWebView in iOS 8 with a UIWebView fallback for earlier versions of iOS.
                       DESC

  s.homepage         = "https://github.com/gowithfloat/FLWebView"

  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.authors          = { "Float" => "apps@gowithfloat.com", "Steve Richey" => "srichey@gowithfloat.com" }
  s.source           = { :git => "https://github.com/gowithfloat/FLWebView.git", :tag => "0.1.1" }
  s.social_media_url = "https://twitter.com/gowithfloat"

  s.ios.deployment_target = "8.0"

  s.source_files = "FLWebView/Classes/**/*"
end
