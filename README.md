# TabBarTest
_What's new_
1. Separated the Dashboard items with individual NavStack. 
2. Each NavStack is driven with its own NavigationPath driven from AppNavigation
3. If PushNotifications have to be deeplinked, this creates a provision to drive it via single point which is AppNavigation.swift
4. We can get rid of environmentObject now and dependencyInject the classes.

_Note: Added the aps payload file to triggger the remote notifications. Drag and drop that file into simulator to manually simulate the remote notification. _
