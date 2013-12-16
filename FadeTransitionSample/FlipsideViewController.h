//
//  FlipsideViewController.h
//  FadeTransitionSample
//
//  Created by Natsuko Nishikata on 2013/12/16.
//  Copyright (c) 2013年 Natsuko Nishikata. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
