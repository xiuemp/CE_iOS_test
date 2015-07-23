//
//  InstalmentViewController.m
//  testApp
//
//  Created by 刘庆良 on 15/7/23.
//  Copyright (c) 2015年 creditease. All rights reserved.
//

#import "InstalmentViewController.h"
#import "DropDownList.h"

@interface InstalmentViewController ()

@end

@implementation InstalmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    DropDownList *droplist = [[DropDownList alloc] initWithFrame:CGRectMake(10, 10, 140, 100)];
    droplist.textField.placeholder = @"请输入联系方式";
    NSArray* arr=[[NSArray alloc]initWithObjects:@"电话",@"email",@"手机",@"aaa",@"bbb",@"ccc",nil];
    droplist.tableArray = arr;
    [self.view addSubview:droplist];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
