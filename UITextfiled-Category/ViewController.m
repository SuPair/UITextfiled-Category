//
//  ViewController.m
//  UITextfiled-Category
//
//  Created by SuAnn on 15/8/7.
//  Copyright (c) 2015年 SuAnn. All rights reserved.
//

#import "ViewController.h"
//#import "UIImageView+TextFiledExpansion.h"
#import "UIView+TextFiledExpansion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
//    img.layer.borderWidth = 1;
//    [img setTextFileStyle:NSTextFiledStyleNormal];
//    [self.view addSubview:img];
    
    UIView *img = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 200, 40)];
    img.layer.borderWidth = 1;
    [img setTextFileStyle:NSViewTextFiledStyleLeftImage];
    img.textFiled.placeholder = @"你好孟大人";
    [self.view addSubview:img];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];
}
@end
