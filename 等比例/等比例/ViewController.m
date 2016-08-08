//
//  ViewController.m
//  等比例
//
//  Created by Macintosh HD on 16/7/13.
//  Copyright © 2016年 Macintosh HD. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YZTCView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor =[UIColor colorWithRed:0.01 green:0.76 blue:0.65 alpha:1];
    
    [self.view fitIphone6:2];
    
    [self addpress];
}
-(void)addpress
{
    NSInteger sss =[UIScreen mainScreen].bounds.size.width /3 * 2.2;
    
    UIView * viewer =[[UIView alloc]initWithFrame:CGRectMake(0, 80,sss , 1)];
    viewer.backgroundColor =[UIColor whiteColor];
    
    [self.view addSubview:viewer];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
