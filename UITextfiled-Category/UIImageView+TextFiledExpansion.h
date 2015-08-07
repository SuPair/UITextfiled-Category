//
//  UIImageView+TextFiledExpansion.h
//  UITextfiled-Category
//
//  Created by SuAnn on 15/8/7.
//  Copyright (c) 2015年 SuAnn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import <objc/message.h>


typedef NS_ENUM(NSInteger, TextFiledStyle) {

    NSTextFiledStyleNormal = 0,
    NSTextFiledStyleLeftImage
    
};

@interface UIImageView (TextFiledExpansion)<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *imgTextFiled;
/**
 *  设置样式
 *
 *  @param style 样式类型
 */
- (void)setTextFileStyle:(TextFiledStyle)style;
@end
