//
//  Tools.h
//  4_Tools
//
//  Created by RichyLeo on 16/6/14.
//  Copyright © 2016年 WTC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tools : NSObject
//加载图片
+(UIImage *)imageWithName:(NSString *)imageName;


// 创建Label
+(UILabel *)createLabelTitle:(NSString *)title
                       frame:(CGRect)frame
                        font:(UIFont *)font
               textAlignment:(NSTextAlignment)alignment;

/**
 *  创建文字性的按钮
 */
+(UIButton *)createTitleButton:(NSString *)title frame:(CGRect)frame target:(id)target action:(SEL)action;


//创建UITextField
+(UITextField *)createTextFiledFrame:(CGRect)frame
                         placeholder:(NSString *)placeholderText
                       textAlignment:(NSTextAlignment)textAlign
                                font:(UIFont *)font;

@end
