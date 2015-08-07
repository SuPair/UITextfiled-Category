//
//  UIImageView+TextFiledExpansion.m
//  UITextfiled-Category
//
//  Created by SuAnn on 15/8/7.
//  Copyright (c) 2015年 SuAnn. All rights reserved.
//

#import "UIImageView+TextFiledExpansion.h"

static char imgTextFiledKey;

@implementation UIImageView (TextFiledExpansion)
@dynamic imgTextFiled;

- (void)setImgTextFiled:(UITextField *)imgTextFiled{

    objc_setAssociatedObject(self, &imgTextFiledKey, imgTextFiled, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}



- (UITextField *)imgTextFiled{

    return objc_getAssociatedObject(self, &imgTextFiledKey);
}


- (void)setTextFileStyle:(TextFiledStyle)style{

    switch (style) {
        case 0:{
         
            self.imgTextFiled = [[UITextField alloc] init];
            self.imgTextFiled.placeholder = @"请输入";
            self.imgTextFiled.delegate = self;
            [self addSubview:self.imgTextFiled];
            [self.imgTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self).with.offset(3);
                make.left.equalTo(self).with.offset(3);
                make.bottom.equalTo(self).with.offset(-3);
                make.right.equalTo(self).with.offset(-3);
            }];
        }
            break;
        case 1:{
            
        }
            break;
//        case 2:{
//            
//        }
//            break;
//        case 3:{
//            
//        }
//            break;
//        case 4:{
//            
//        }
//            break;
            
        default:
            break;
    }

}

@end
