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
const JFParallax kJFParallaxViewAmount_None     = {1.0f, 1.0f};
const JFParallax kJFParallaxViewAmount_Low      = {0.25f, 0.25f};
const JFParallax kJFParallaxViewAmount_Medium   = {0.5f, 0.5f};
const JFParallax kJFParallaxViewAmount_High     = {0.75f, 0.75f};

const void* kJFParallaxAmonut = &kJFParallaxAmonut;

@implementation UIView (JFParallaxView)

- (void)setParallaxAmount:(JFParallax)parallaxAmount {
    
    parallaxAmount.x = 1.0f - parallaxAmount.x;
    parallaxAmount.y = 1.0f - parallaxAmount.y;
    
    NSValue *value = [NSValue valueWithCGPoint:parallaxAmount];
    
    objc_setAssociatedObject(self, &kJFParallaxAmonut, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (JFParallax)parallaxAmount {
    
    NSValue *value = objc_getAssociatedObject(self, &kJFParallaxAmonut);
    
    if(!value) {
        return kJFParallaxViewAmount_None;
    }
    
    return [value CGPointValue];
}

@end