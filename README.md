# JFParallaxView
JFParallaxView is used as a class category for adding parallax to scrollable UIKit components. The categories simply add a parallaxAmount property to UIView which is used by UIScroll view to parallax the view.

![alt tag](https://raw.github.com/jfuellert/JFParallaxView/tree/master/Images/parallax.gif)

##Purpose
The main purpose of this software is to provide developers with a simple way to add non-intrusive parallax functionality to scrollable UIKit components. There are two category classes required to add this functionality, one relating to UIScrollView and another relating to UIView.

##Installation
Install via CocoaPods
Add the following line to your .podfile

```
pod 'JFParallaxView'
```
##Support
####IOS
Earliest tested and supported build and deployment target - iOS 6.0. 
Latest tested and supported build and deployment target - iOS 8.4.

##ARC Compatibility
JFParallaxView is built from ARC and is ARC-only compatible. 

##Usage
####JFParallaxView initialization
Simply import the category classes in your files.
``` objective-c
#import <JFParallaxView/UIScrollView+JFParallaxView.h>
#import <JFParallaxView/UIView+JFParallaxView.h>
``` 

####UIScrollView usage
Import the UIScrollView category to any UIScrollView instance or UIScrollView subclass instance that you wish to use it on.

####UIView category usage
You can simply add a new value for parallaxAmount to your UIView class or subclass.
``` objective-c
UIView *view        = [[UIView alloc] init];
view.parallaxAmount = CGPointMake(1.5f, 1.5f);
``` 
