//
//  UIView+JFParallaxView.h
//  JFParallaxView
//
//  Created by Jeremy Fuellert on 2015-08-07.
//  Copyright (c) 2015 Jeremy Fuellert. All rights reserved.
//

@import UIKit;

typedef CGPoint JFParallax;

CG_INLINE JFParallax JFParallaxMake(CGFloat x, CGFloat y) {
    JFParallax p; p.x = x; p.y = y; return p;
}

#pragma mark - Constants
FOUNDATION_EXPORT const JFParallax kJFParallaxViewAmount_None;
FOUNDATION_EXPORT const JFParallax kJFParallaxViewAmount_Low;
FOUNDATION_EXPORT const JFParallax kJFParallaxViewAmount_Medium;
FOUNDATION_EXPORT const JFParallax kJFParallaxViewAmount_High;

@interface UIView (JFParallaxView)

/** The parallax amount. Default value is kJFParallaxViewAmount_None. */
@property (nonatomic, assign) JFParallax parallaxAmount;

@end