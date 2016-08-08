//
//  BaseMapViewController.h
//  SearchV3Demo
//
//  Created by songjian on 13-8-14.
//  Copyright (c) 2013年 songjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import "APIKey.h"

@interface BaseMapViewController : UIViewController<MAMapViewDelegate>
@property (nonatomic, strong) MAMapView *mapView;

- (void)returnAction;

/**
 *  hook,子类覆盖它,实现想要在viewDidAppear中执行一次的方法,搜索中有用到
 */
- (void)hookAction;

- (NSString *)getApplicationName;
- (NSString *)getApplicationScheme;

@end
