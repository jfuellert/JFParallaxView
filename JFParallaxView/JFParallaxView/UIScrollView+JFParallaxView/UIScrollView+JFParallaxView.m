//
//  UIScrollView+JFParallaxView.m
//  JFParallaxView
//
//  Created by Jeremy Fuellert on 2015-08-07.
//  Copyright (c) 2015 Jeremy Fuellert. All rights reserved.
//

#import "UIScrollView+JFParallaxView.h"
#import "UIView+JFParallaxView.h"

@implementation UIScrollView (JFParallaxView)

#pragma mark - Layout subviews
- (void)layoutSubviews {
    [super layoutSubviews];
    
    const CGPoint contentOffset = self.contentOffset;
    CGFloat x                   = 0.0f;
    CGFloat y                   = 0.0f;
    
    for(UIView *view in self.subviews) {
        
        x = contentOffset.x * view.parallaxAmount.x;
        y = contentOffset.y * view.parallaxAmount.y;
        view.layer.affineTransform = CGAffineTransformMakeTranslation(x, y);
    }
}

@end