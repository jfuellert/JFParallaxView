//
//  UIView+JFParallaxView.h
//  JFParallaxView
//
//  Created by Jeremy Fuellert on 2015-08-07.
//  Copyright (c) 2015 Jeremy Fuellert. All rights reserved.
//

@import UIKit;

#pragma mark - Constants
FOUNDATION_EXPORT const CGPoint kCGPointParallaxViewAmount_None;

@interface UIView (JFParallaxView)

/** The parallax amount. Default value is kJFParallaxViewAmount_None. */
@property (nonatomic, assign) CGPoint parallaxAmount;

@end