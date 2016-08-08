//
//  Tools.m
//  4_Tools
//
//  Created by RichyLeo on 16/6/14.
//  Copyright © 2016年 WTC. All rights reserved.
//

#import "Tools.h"

@implementation Tools

//参数：imageName  完整图片名称（带扩展名）
+(UIImage *)imageWithName:(NSString *)imageName
{
    NSString *path =[[NSBundle mainBundle]pathForResource:imageName ofType:nil];

    UIImage * image =[UIImage imageWithContentsOfFile:path];
    
    
        return image;


}



// 创建Label
+(UILabel *)createLabelTitle:(NSString *)title
                       frame:(CGRect)frame
                        font:(UIFont *)font
               textAlignment:(NSTextAlignment)alignment
{
    UILabel * label = [[UILabel alloc] init];
    label.frame = frame;
    label.text = title;
    label.textAlignment = alignment;
    label.font = font;
    
    return label;
}

/**
 *  创建文字性的按钮
 */
+(UIButton *)createTitleButton:(NSString *)title
                         frame:(CGRect)frame
                        target:(id)target
                        action:(SEL)action
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}


//创建 文本框 UITextField
+(UITextField *)createTextFiledFrame:(CGRect)frame
                         placeholder:(NSString *)placeholderText
                       textAlignment:(NSTextAlignment)textAlign
                                font:(UIFont *)font

{
    UITextField * text=[[UITextField alloc]initWithFrame:frame];
    text.font=font;
    text.placeholder=placeholderText;
    text.textAlignment= textAlign;
    text.borderStyle=UITextBorderStyleRoundedRect;
    
    text.clearButtonMode=UITextFieldViewModeWhileEditing;
    
    return text;
}

@end
