//
//  UIView+TextFiledExpansion.m
//  UITextfiled-Category
//
//  Created by SuAnn on 15/8/7.
//  Copyright (c) 2015年 SuAnn. All rights reserved.
//

#import "UIView+TextFiledExpansion.h"

static char imgTextFiledKey;
static char autoRecoverKeyboardKey;

@implementation UIView (TextFiledExpansion)
@dynamic autoRecoverKeyboard;
@dynamic textFiled;

- (void)setTextFiled:(UITextField *)textFiled{
    objc_setAssociatedObject(self, &imgTextFiledKey, textFiled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UITextField *)textFiled{
    return objc_getAssociatedObject(self, &imgTextFiledKey);
}

- (void)setAutoRecoverKeyboard:(BOOL)autoRecoverKeyboard{
    NSString *autoKey;
    if (autoRecoverKeyboard) {
        autoKey = @"1";
    }else{
        autoKey = @"0";
    }
    objc_setAssociatedObject(self, &autoRecoverKeyboardKey, autoKey, OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)autoRecoverKeyboard{

    NSString *autoKey = objc_getAssociatedObject(self, &autoRecoverKeyboardKey);
    if ([autoKey isEqualToString:@"1"]) {
        return YES;
    }else{
        return NO;
    }
}


- (void)setTextFileStyle:(ViewTextFiledStyle)style{
    
    switch (style) {
        case 0:{
            
            self.textFiled = [[UITextField alloc] init];
            self.textFiled.placeholder = @"请输入";
            self.textFiled.delegate = self;
            [self addSubview:self.textFiled];
            [self.textFiled mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self).with.offset(3);
                make.left.equalTo(self).with.offset(3);
                make.bottom.equalTo(self).with.offset(-3);
                make.right.equalTo(self).with.offset(-3);
            }];
        }
            break;
        case 1:{
            UIImageView *logo = [[UIImageView alloc] init];
            [self addSubview:logo];
            [logo mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self).with.offset(3);
                make.left.equalTo(self).with.offset(3);
                make.bottom.equalTo(self).with.offset(-3);
                make.width.equalTo(logo.mas_height);
            }];
            self.textFiled = [[UITextField alloc] init];
            self.textFiled.placeholder = @"请输入信息";
            self.textFiled.delegate = self;
            [self addSubview:self.textFiled];
            [self.textFiled mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self).with.offset(3);
                make.left.equalTo(logo.mas_right).with.offset(5);
                make.bottom.equalTo(self).with.offset(-3);
                make.right.equalTo(self).with.offset(-3);
            }];
            
        }
            break;
        default:
            break;
    }
    
}

#pragma mark -------------UITextFieldDelegate---------------

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return YES;
}


@end
