//
//  ViewController.m
//  多线程
//
//  Created by Macintosh HD on 16/7/19.
//  Copyright © 2016年 Macintosh HD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,copy )NSString * urlsting ;
@property (nonatomic,strong )UILabel * mylabel;
@end

@implementation ViewController
-(UILabel *)mylabel
{
    if ( _mylabel== nil) {
        _mylabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,99, 99)];
        [self.view addSubview:_mylabel];
    }
    return _mylabel;
}


-(NSString *)urlsting
{
    if ( _urlsting== nil) {
        _urlsting = @"http://www.weather.com.cn/data/cityinfo/101010100.html";
        
    }
    return _urlsting;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    /**
    天气预报api： http://www.weather.com.cn/data/cityinfo/101010100.html  天气预报接口是免费的
     NSOperation
     
     GCD
     
     线程同步
     
     */
   
//    NSURL * url =[NSURL URLWithString:self.urlsting];
//    NSData * data =[NSData dataWithContentsOfURL:url];
//    
//    NSError * errzor =nil;
//    NSDictionary * dic =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&errzor];
//   
//    
//    NSLog(@"%@",dic);
//    NSLog( @"----------------");
//    
//    [self performSelectorInBackground:@selector(sendAction) withObject:self];
//    
//    [self onceAction];//执行一次
//    [self sendAction];//延迟操作
//    [self applyACtion];//重复次数
    [self andAction];
}

-(void)andAction
{
    /**
     *  DISPATCH_QUEUE_CONCURRENT :并发
     *  DISPATCH_QUEUE_SERIAL     :串行
     */
    dispatch_queue_t queue = dispatch_queue_create("1234567890",DISPATCH_QUEUE_CONCURRENT);  //创建一个新的调度队列模块可以被提交
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:3];
        NSLog(@"1");
    });
    
    dispatch_barrier_async(queue, ^{
        [NSThread sleepForTimeInterval:3];

        NSLog(@"2");
    });
    
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:1];

        NSLog(@"3");
    });
    
    NSLog(@"four");
}
//重复次数
-(void)applyACtion
{
    dispatch_queue_t queue =dispatch_queue_create("1234567",DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        dispatch_apply(4, queue, ^(size_t index) {
            NSLog(@"--------------%zu----", index ) ;
        }) ;
    }) ;
}
// GCD 延迟操作
-(void)sendAction
{
    // GCD 延迟操作
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSLog(@"---------+++++---------");
        
        });
}

-(void)onceAction
{
    //延迟操作
    //    [self  performSelector:@selector(action) withObject:self afterDelay:4];

}
@end
