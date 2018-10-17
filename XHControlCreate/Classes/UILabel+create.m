//
//  UILabel+create.m
//  YouXinZhengQuan
//
//  Created by RuiQuan Dai on 2018/7/2.
//Copyright © 2018年 RenRenDai. All rights reserved.
//

#import "UILabel+create.h"

@implementation UILabel (create)



+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)textColor textFont:(UIFont *)textFont {
    UILabel *label = [[self alloc] init];
    label.text = text;
    label.font = textFont;
    label.textColor = textColor;
    return label;
}

+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)textColor textFont:(UIFont *)textFont textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [self labelWithText:text textColor:textColor textFont:textFont];
    label.textAlignment = textAlignment;
    return label;
}


@end
