//
//  FadeAnimationController.m
//  FadeTransitionSample
//
//  Created by Natsuko Nishikata on 2013/12/16.
//  Copyright (c) 2013年 Natsuko Nishikata. All rights reserved.
//

#import "FadeAnimationController.h"

@implementation FadeAnimationController

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1.0;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    // 遷移元、遷移先ビューコントローラの取得
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // アニメーションの土台となるコンテナビューを取得
    UIView *containerView = [transitionContext containerView];
    
    // コンテナビュー上に遷移先ビューを追加
    [containerView insertSubview:toVC.view belowSubview:fromVC.view];
    
    // アニメーションを実行
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                     animations:^{
                         fromVC.view.alpha = 0.0;
                     }
                     completion:^(BOOL finished){
                         // 画面遷移完了を通知
                         [transitionContext completeTransition:YES];
                     }];
}

@end
