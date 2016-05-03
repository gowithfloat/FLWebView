#!/bin/sh

xctool \
	-workspace Example/FLWebView.xcworkspace \
	-scheme FLWebView-Example \
	-sdk iphonesimulator \
	build \
	clean test -test-sdk iphonesimulator -resetSimulator -freshInstall