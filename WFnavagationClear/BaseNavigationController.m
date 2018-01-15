//
//  BaseNavigationController.m
//  YiJianShenUser
//
//  Created by 申文峰 on 2017/5/3.
//  Copyright © 2017年 申文峰. All rights reserved.
//

#import "BaseNavigationController.h"


@interface BaseNavigationController ()

@end

@implementation BaseNavigationController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setBarTintColor:[UIColor redColor]];
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
}

- (id)init {
    self = [super initWithNavigationBarClass:[WFNavigationBar class] toolbarClass:nil];
    if(self) {
    }
    return self;
}

- (id)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithNavigationBarClass:[WFNavigationBar class] toolbarClass:nil];
    if(self) {
        self.viewControllers = @[rootViewController];
    }
    
    return self;
}
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
