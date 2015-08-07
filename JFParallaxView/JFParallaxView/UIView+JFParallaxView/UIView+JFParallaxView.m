//
//  UIView+JFParallaxView.m
//  JFParallaxView
//
//  Created by Jeremy Fuellert on 2015-08-07.
//  Copyright (c) 2015 Jeremy Fuellert. All rights reserved.
//

#import "UIView+JFParallaxView.h"
#import <objc/runtime.h>

#pragma mark - Constants
const CGPoint kCGPointParallaxViewAmount_None     = {1.0f, 1.0f};

const void* kJFParallaxAmonut = &kJFParallaxAmonut;

@implementation UIView (JFParallaxView)

- (void)setParallaxAmount:(CGPoint)parallaxAmount {
    
    parallaxAmount.x = 1.0f - parallaxAmount.x;
    parallaxAmount.y = 1.0f - parallaxAmount.y;
    
    NSValue *value = [NSValue valueWithCGPoint:parallaxAmount];
    
    objc_setAssociatedObject(self, &kJFParallaxAmonut, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGPoint)parallaxAmount {
    
    NSValue *value = objc_getAssociatedObject(self, &kJFParallaxAmonut);
    
    if(!value) {
        return kCGPointParallaxViewAmount_None;
    }
    
    return [value CGPointValue];
}

@end