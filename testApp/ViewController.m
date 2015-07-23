//
//  ViewController.m
//  testApp
//
//  Created by 刘庆良 on 15/7/22.
//  Copyright (c) 2015年 creditease. All rights reserved.
//

#import "ViewController.h"
#import "DropDownList.h"

static NSString *TableViewCellIdentifier = @"MyCells";

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myPicker = [[UIPickerView alloc] init];
    self.myPicker.dataSource = self;
    self.myPicker.delegate = self;
    self.myPicker.center = self.view.center;
    [self.view addSubview:self.myPicker];
    
    DropDownList *droplist = [[DropDownList alloc] initWithFrame:CGRectMake(10, 10, 140, 100)];
    droplist.textField.placeholder = @"请输入联系方式";
    NSArray* arr=[[NSArray alloc]initWithObjects:@"电话",@"email",@"手机",@"aaa",@"bbb",@"ccc",nil];
    droplist.tableArray = arr;
    [self.view addSubview:droplist];
    
    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 50, 200, 200)];
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:TableViewCellIdentifier];
    self.myTableView.dataSource = self;
    /* Make sure our table view resizes correctly */
//    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.myTableView.delegate = self;
    [self.view addSubview:self.myTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    if ([pickerView isEqual:self.myPicker]){
        return 1;
    }
    
    return 0;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if ([pickerView isEqual:self.myPicker]) {
        return 10;
    }
    
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if ([pickerView isEqual:self.myPicker]) {
        return [NSString stringWithFormat:@"Row %ld", (long)row + 1];
    }
    
    return nil;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    if ([tableView isEqual:self.myTableView]) {
//        return 100.0f;
//    }
//    return 40.0f;
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    if ([tableView isEqual:self.myTableView]) {
        return 3;
    }
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if ([tableView isEqual:self.myTableView]) {
        switch (section) {
            case 0:{
                return 3;
                break;
            }
            case 1:{
                return 5;
                break;
            }
            case 2:{
                return 8;
                break;
            }
            default:
                break;
        }
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = nil;
    
    if ([tableView isEqual:self.myTableView]) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = [NSString stringWithFormat:@"Section %ld, Cell %ld", (long)indexPath.section, (long)indexPath.row];
    }
    
    return cell;
}

@end
