#!/bin/sh

xctool \
	-project FLWebView.xcodeproj \
	-scheme FLWebView \
	-sdk iphonesimulator \
	build \
	test -test-sdk iphonesimulator \
	test -test-sdk iphonesimulator7.1