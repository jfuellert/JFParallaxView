//
//  JFRootViewController.m
//  JFParallaxView
//
//  Created by Jeremy Fuellert on 2015-08-07.
//  Copyright (c) 2015 Jeremy Fuellert. All rights reserved.
//

#import "JFRootViewController.h"
#import "UIScrollView+JFParallaxView.h"
#import "UIView+JFParallaxView.h"

#pragma mark - Constants
const NSUInteger kJFRootViewController_NumberOfViews = 6;

@implementation JFRootViewController

#pragma mark - Init
- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect bounds      = self.view.bounds;

    //Scroll view
    UIScrollView *scrollView    = [[UIScrollView alloc] initWithFrame:bounds];
    scrollView.backgroundColor  = [UIColor whiteColor];
    [self.view addSubview:scrollView];

    scrollView.contentSize = CGSizeMake(CGRectGetWidth(scrollView.frame) * 3, CGRectGetHeight(scrollView.frame));
    
    //View size
    bounds.size.width            = CGRectGetWidth(bounds) * 0.5f;
    bounds.size.height           = CGRectGetHeight(bounds) * 0.15f;
    bounds.origin.x              = scrollView.center.x - (CGRectGetWidth(bounds) * 0.5f);
    bounds.origin.y              = CGRectGetHeight(scrollView.frame) * 0.025f;
    
    //Views
    NSMutableArray *views = [[NSMutableArray alloc] initWithCapacity:kJFRootViewController_NumberOfViews];
    
    NSUInteger currentViewIndex = 0;
    while(currentViewIndex < kJFRootViewController_NumberOfViews) {
        
        if(views.count) {
            bounds.origin.y = ((UIView *)[views lastObject]).center.y + 50.0f;
        }
        
        UILabel *view = [self viewWithIndex:currentViewIndex bounds:bounds];
        [views addObject:view];
        
        currentViewIndex ++;
    }

    //Add parallax
    JFParallax parallaxAmount = JFParallaxMake(0.0f, 0.0f);
    for(UIView *view in views) {
        
        parallaxAmount.x += 0.25f;
        parallaxAmount.y += 0.25f;
        
        view.parallaxAmount = parallaxAmount;
        [scrollView addSubview:view];
    }    
}

#pragma mark - View creation
- (UILabel *)viewWithIndex:(NSUInteger)index bounds:(CGRect)bounds {
    
    UILabel *view            = [[UILabel alloc] initWithFrame:bounds];
    view.backgroundColor     = [UIColor darkGrayColor];
    view.textColor           = [UIColor whiteColor];
    view.textAlignment       = NSTextAlignmentCenter;
    view.text                = [NSString stringWithFormat:@"View %lu", (unsigned long)index];

    return view;
}

@end