//
//  AViewController.m
//  翻转效果
//
//  Created by 韩永进 on 16/7/25.
//  Copyright © 2016年 han. All rights reserved.
//

#import "AViewController.h"
#import <SDImageCache.h>
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.baidu.com/img/baidu_jgylogo3.gif"]];
      UIImage *iamge = [UIImage imageWithData:data];
    if (iamge) {
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.bounds];
        imageV.image = iamge;
        [self.view addSubview:imageV];
        int64_t del = 0.5;
        
        
        dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, del * NSEC_PER_SEC);
        
        dispatch_after(time, dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter]postNotificationName:@"chenggong" object:iamge];
        });
    }
   
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
