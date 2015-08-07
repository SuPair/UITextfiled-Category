//
//  UIView+TextFiledExpansion.h
//  UITextfiled-Category
//
//  Created by SuAnn on 15/8/7.
//  Copyright (c) 2015年 SuAnn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import <objc/message.h>


typedef NS_ENUM(NSInteger, ViewTextFiledStyle) {

    NSViewTextFiledStyleNormal = 0,
    NSViewTextFiledStyleLeftImage
};

@interface UIView (TextFiledExpansion)<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *textFiled;
@property (nonatomic, assign) BOOL autoRecoverKeyboard;
/**
 *  设置样式
 *
 *  @param style 样式类型
 */
- (void)setTextFileStyle:(ViewTextFiledStyle)style;
@end
