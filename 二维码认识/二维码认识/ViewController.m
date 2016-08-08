//
//  ViewController.m
//  二维码认识
//
//  Created by Macintosh HD on 16/7/11.
//  Copyright © 2016年 Macintosh HD. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+QRCode.h"
@interface ViewController ()

@property (nonatomic,strong )UIImageView * imgView;

@end

@implementation ViewController
-(UIImageView *)imgView
{
    if ( _imgView== nil) {
        _imgView = [[UIImageView alloc]initWithFrame:CGRectMake(99, 99, 99, 99)];
        [self.view addSubview:_imgView];
    }
    return _imgView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //二维码
  UIImage * imager =[UIImage customQRCode:@"123456" w:99 h:99];
    //条形码
    UIImage * barImg =[UIImage customBarCode:@"123456789" w:99 h:99];
    self.imgView.image=imager;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
