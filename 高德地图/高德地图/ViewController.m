//
//  ViewController.m
//  高德地图
//
//  Created by Macintosh HD on 16/7/14.
//  Copyright © 2016年 Macintosh HD. All rights reserved.
//

#import "ViewController.h"
#import "ChlidViewController.h"
#import "ZiDingYiTableViewController.h"
#define  SCREEN_WEITH [UIScreen mainScreen].bounds.size.width
#define  SCREEN_HEITH [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
@property (nonatomic,strong ) ChlidViewController * myChirdMapVC;
@property (nonatomic,strong )ZiDingYiTableViewController * myTabViewVC;
@property (nonatomic,strong )UIButton * tramsBtn ;
@end

@implementation ViewController
#pragma mark - 懒加载
- (ChlidViewController *)myChirdMapVC
{
   
    
    if (_myChirdMapVC==nil) {
        // 地图类
        _myChirdMapVC = [[ChlidViewController alloc] init] ;
        // 设置地图页面的大小
        _myChirdMapVC.view.frame = CGRectMake(0, 0, SCREEN_WEITH, SCREEN_HEITH) ;
        // 将地图页面添加到当前的页面中
        [self.view addSubview:_myChirdMapVC.view];
        // 将地图控制器添加为当前控制器的子控制器(如果注释掉，正常显示，但不是当前控制器的子控制器，无法调用当前控制器的方法，属性)
        [self addChildViewController:_myChirdMapVC] ;
    }
    return _myChirdMapVC ;
}



-(ZiDingYiTableViewController *)myTabViewVC
{
    if ( _myTabViewVC== nil) {
        _myTabViewVC = [[ZiDingYiTableViewController alloc]init ];
        _myTabViewVC.view.frame = CGRectMake(0, 0, SCREEN_WEITH, SCREEN_HEITH) ;
        [self.view addSubview:_myTabViewVC.view];
        [self addChildViewController:_myTabViewVC];
    }
    return _myTabViewVC;
}


-(UIButton *)tramsBtn
{
    if ( _tramsBtn== nil) {
        _tramsBtn = [[UIButton alloc]init];
        _tramsBtn.frame =CGRectMake(0, 0, 99, 99);
        [_tramsBtn setTitle:@"点击" forState:UIControlStateNormal];
        [_tramsBtn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_tramsBtn];
    }
    return _tramsBtn;
}
#pragma mark - 点击事件
-(void)btnAction:(UIButton *)myBtn
{
    myBtn.selected =!myBtn.selected;
    //翻转动画
    //开始动画
    [UIView beginAnimations:nil context:nil];
    //动画时间
    [UIView setAnimationDuration:2];
    //动画的样式
    [UIView setAnimationTransition:myBtn.selected == YES?
     UIViewAnimationTransitionFlipFromLeft:
     UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
    //调整view层次顺序
    if (myBtn.selected ) {
        
        [self.view sendSubviewToBack:self.myTabViewVC.view];
    }else{
    
        [self.view sendSubviewToBack:self.myChirdMapVC.view];

    }
    
    //结束
    [UIView commitAnimations];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [super viewDidLoad];
    
    ChlidViewController * chVC =[[ChlidViewController alloc]init];
    chVC.view.frame =CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    [self.view addSubview:chVC.view];
    [self addChildViewController:chVC];
    
    
    
    
    
    self.myTabViewVC.view.backgroundColor = [UIColor whiteColor] ;
   
    self.tramsBtn.backgroundColor =[UIColor orangeColor];
    
}



@end
