#!/bin/sh

xctool \
	-project FLWebView.xcodeproj \
	-scheme FLWebView \
	-sdk iphonesimulator \
	build \
	clean test -test-sdk iphonesimulator -resetSimulator -freshInstall