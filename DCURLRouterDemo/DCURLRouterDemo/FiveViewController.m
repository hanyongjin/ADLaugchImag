//
//  FiveViewController.m
//  DCURLRouterDemo
//
//  Created by Dariel on 16/8/17.
//  Copyright © 2016年 DarielChen. All rights reserved.
//

#import "FiveViewController.h"
#import "DCURLRouter.h"

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *title = [[UILabel alloc] init];
    title.text = NSStringFromClass([self class]);
    title.font = [UIFont systemFontOfSize:20];
    title.textColor = [UIColor lightGrayColor];
    title.numberOfLines = 0;
    [title sizeToFit];
    [self.view addSubview:title];
    title.center = self.view.center;
    
        
    self.navigationItem.title = @"FiveViewController";
    
    NSLog(@"%@",self.params);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

//    [DCURLRouter presentURLString:@"dariel://threeitem" animated:YES];
    
//    [DCURLRouter popToRootViewControllerAnimated:YES];
    
//    [DCURLRouter popTwiceViewControllerAnimated:YES];
    
//    [DCURLRouter popViewControllerWithTimes:3 animated:YES];
    
    
//    [DCURLRouter popViewControllerAnimated:YES];
//    [DCURLRouter dismissViewControllerWithTimes:5 animated:YES completion:nil];
    
//    [DCURLRouter dismissToRootViewControllerAnimated:YES completion:nil];
    
//    [DCURLRouter dismissToRootViewControllerAnimated:YES completion:nil];
    
//    [DCURLRouter dismissTwiceViewControllerAnimated:YES completion:nil];
    
    [DCURLRouter pushURLString:@"http://www.baidu.com" animated:YES];
    
//    [DCURLRouter presentURLString:@"http://www.baidu.com" animated:YES];
    
//    [DCURLRouter pushURLString:@"https://www.baidu.com" animated:YES];
    
}

- (void)dealloc {
    
    NSLog(@"%s", __func__);
}

@end
