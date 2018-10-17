//
//  UIButton+create.h
//  YouXinZhengQuan
//
//  Created by RuiQuan Dai on 2018/7/2.
//Copyright © 2018年 RenRenDai. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, YXButtonSubViewPositon) {
    YXButtonSubViewPositonRight,
    YXButtonSubViewPositonLeft,
    YXButtonSubViewPositonTop,
    YXButtonSubViewPositonBottom
};


@interface UIButton (utility)



/**
 快速创建按钮
 
 
 @param type type
 @param title title
 @param font font
 @param titleColor titleColor
 @param target target
 @param action action
 
 @return return UIButton
 */
+ (UIButton *)buttonWithType:(UIButtonType)type
                       title:(NSString *)title
                        font:(UIFont *)font
                  titleColor:(UIColor *)titleColor
                      target:(id)target
                      action:(SEL)action;




/**
 快速创建按钮
 
 
 @param type type
 @param image image
 @param target target
 @param action action
 
 @return return UIButton
 */
+ (UIButton *)buttonWithType:(UIButtonType)type
                       image:(UIImage *)image
                      target:(id)target
                      action:(SEL)action;



/**
 设置按钮图片位置 标题位置相反方向

 @param imagePosition 图片位置
 @param interval 图片和标题间隔
 */
- (void)setButtonImagePostion:(YXButtonSubViewPositon)imagePosition
                     interval:(CGFloat)interval;




@end
