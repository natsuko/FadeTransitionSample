//
//  MainViewController.m
//  FadeTransitionSample
//
//  Created by Natsuko Nishikata on 2013/12/16.
//  Copyright (c) 2013年 Natsuko Nishikata. All rights reserved.
//

#import "MainViewController.h"
#import "FadeAnimationController.h"

@interface MainViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
        [[segue destinationViewController] setTransitioningDelegate:self]; // 画面遷移デリゲートを設定
    }
}

#pragma mark UIViewControllerTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [[FadeAnimationController alloc] init];
}

@end
