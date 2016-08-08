//
//  UIImage+QRCode.h
//  erweim
//
//  Created by PG on 16/5/24.
//  Copyright © 2016年 PG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCode)

//生成二维码
+ (UIImage *)customQRCode:(NSString *)code w:(CGFloat)width h:(CGFloat)height ;

//生成条形码
+ (UIImage *)customBarCode:(NSString *)code w:(CGFloat)width h:(CGFloat)height  ;




@end
