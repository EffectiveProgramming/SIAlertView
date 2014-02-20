//
//  SIAlertViewController.m
//  SIAlertView
//
//  Created by Kevin Cao on 13-4-29.
//  Copyright (c) 2013年 Sumi Interactive. All rights reserved.
//

#import "SIAlertViewController.h"
#import "SIAlertView.h"

@interface SIAlertViewController ()

@end



@implementation SIAlertViewController

#pragma mark - View lifecycle
- (void)loadView
{
    [super loadView];
    self.view = self.alertView;

    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.alertView setup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    NSLog(@"%s: ** didReceiveMemoryWarning **", __PRETTY_FUNCTION__);
}

#pragma mark - View rotation

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [self.alertView resetTransition];
    [self.alertView invalidateLayout];
}

@end
