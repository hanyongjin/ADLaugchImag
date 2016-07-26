//
//  ViewController.m
//  翻转效果
//
//  Created by 韩永进 on 16/7/11.
//  Copyright © 2016年 han. All rights reserved.
//

#import "ViewController.h"
#import <CommonCrypto/CommonCryptor.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.bounds];
    
    imageV.image = self.image;
    
    [self.view addSubview:imageV];
        
        [UIView animateWithDuration:3 animations:^{
            imageV.transform = CGAffineTransformMakeScale(2, 2);
            imageV.alpha = 0;
        } completion:^(BOOL finished) {
             [imageV removeFromSuperview];
        }];
    
}


@end
