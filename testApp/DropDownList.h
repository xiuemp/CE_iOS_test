//
//  DropDownList.h
//  testApp
//
//  Created by 刘庆良 on 15/7/23.
//  Copyright (c) 2015年 creditease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropDownList : UIView <UITableViewDelegate,UITableViewDataSource> {
    UITableView *tv;//下拉列表
    NSArray *tableArray;//下拉列表数据
    UITextField *textField;//文本输入框
    BOOL showList;//是否弹出下拉列表
    CGFloat tabheight;//table下拉列表的高度
    CGFloat frameHeight;//frame的高度
}

@property (nonatomic,retain) UITableView *tv;
@property (nonatomic,retain) NSArray *tableArray;
@property (nonatomic,retain) UITextField *textField;

@end
