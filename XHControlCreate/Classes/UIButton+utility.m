//
//  UIButton+create.m
//  YouXinZhengQuan
//
//  Created by RuiQuan Dai on 2018/7/2.
//Copyright © 2018年 RenRenDai. All rights reserved.
//

#import "UIButton+utility.h"

@implementation UIButton (utility)


+ (UIButton *)buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font{
    
    UIButton *button = [UIButton buttonWithType:type];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = font;
    return button;
}


+ (UIButton *)buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor target:(id)target action:(SEL)action{
    
    UIButton *button = [self buttonWithType:type title:title font:font];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    if (target != nil || action != nil) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

+ (UIButton *)buttonWithType:(UIButtonType)type image:(UIImage *)image target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:type];
    if (target != nil || action != nil) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }    [button setImage:image forState:UIControlStateNormal];
    return button;
}


- (void)setButtonImagePostion:(YXButtonSubViewPositon)imagePosition interval:(CGFloat)interval{
    
    
    
    CGSize imageSize = self.imageView.bounds.size;
    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    
    
    NSLog(@"+++++++++++++++++ %@  %@",NSStringFromCGSize(imageSize), NSStringFromCGSize(titleSize));
    
    /*
    typedef struct UIEdgeInsets {
        CGFloat top, left, bottom, right;  // specify amount to inset (positive) for each of the edges. values can be negative to 'outset'
    } UIEdgeInsets;
    
     top : 为正数的时候,是往下偏移,为负数的时候往上偏移;
     left : 为正数的时候往右偏移,为负数的时候往左偏移;
     bottom : 为正数的时候往上偏移,为负数的时候往下偏移;
     right :为正数的时候往左偏移,为负数的时候往右偏移;
     
     */
    
    if (imagePosition == YXButtonSubViewPositonTop) {
        
     
//        [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, titleSize.height + interval/2.0, -(titleSize.width ))];
//        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageSize.height + interval/2.0, -(imageSize.width), 0, 0)];
//

        [self setImageEdgeInsets:UIEdgeInsetsMake(-titleSize.height-interval/2.0, 0, 0, -titleSize.width)];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageSize.width, -imageSize.height-interval/2.0, 0)];
        
//        imageEdgeInsets = ;
//        labelEdgeInsets = ;
    }
    
    
    if (imagePosition == YXButtonSubViewPositonBottom) {
        
      
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(titleSize.height+interval,(titleSize.width + interval/2.0), 0, 0)];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, imageSize.height + interval/2.0, (imageSize.width + interval/2.0))];
        
    }
    
    
    if (imagePosition == YXButtonSubViewPositonRight) {
        
      
        self.imageEdgeInsets = UIEdgeInsetsMake(0,titleSize.width + interval, 0, -(titleSize.width + interval));
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageSize.width + interval), 0, imageSize.width + interval);

    }
    
    if (imagePosition == YXButtonSubViewPositonLeft && interval != 0) {
        
        
        
        self.imageEdgeInsets = UIEdgeInsetsMake(0,  -interval/2.0, 0, +interval/2.0);
        self.titleEdgeInsets = UIEdgeInsetsMake(0, interval/2.0, 0, -interval/2.0);
    }
    
}




@end
