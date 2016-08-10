//
//  ViewController.m
//  HcdDateTimePickerDemo
//
//  Created by polesapp-hcd on 16/8/10.
//  Copyright © 2016年 Polesapp. All rights reserved.
//

#import "ViewController.h"
#import "HcdDateTimePickerView.h"

#define kBasePadding 15
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController (){
    HcdDateTimePickerView * dateTimePickerView;
}

@property (nonatomic, strong) UILabel *timeLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timeLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 50, kScreenWidth, 20)];
    self.timeLbl.textAlignment = NSTextAlignmentCenter;
    self.timeLbl.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.timeLbl];
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, 100, kScreenWidth - 2*kBasePadding, 40)];
    btn1.layer.cornerRadius = 4;
    btn1.backgroundColor = [UIColor grayColor];
    [btn1 setTitle:@"ALL" forState:UIControlStateNormal];
    btn1.tag = 1;
    [btn1 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, CGRectGetMaxY(btn1.frame) + kBasePadding, kScreenWidth - 2*kBasePadding, 40)];
    btn2.layer.cornerRadius = 4;
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 setTitle:@"YEAR-MONTH-DAY" forState:UIControlStateNormal];
    btn2.tag = 2;
    [btn2 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, CGRectGetMaxY(btn2.frame) + kBasePadding, kScreenWidth - 2*kBasePadding, 40)];
    btn3.layer.cornerRadius = 4;
    btn3.backgroundColor = [UIColor grayColor];
    [btn3 setTitle:@"HOUR-MINUTE-SECOND" forState:UIControlStateNormal];
    btn3.tag = 3;
    [btn3 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
}

- (void)btnClicked:(UIButton *)btn {
    NSInteger tag = btn.tag;
    
    __block ViewController *weakSelf = self;
    
    switch (tag) {
        case 1:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDatetimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 2:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDateMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 3:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerTimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        default:
            break;
    }
    
    if (dateTimePickerView) {
        [self.view addSubview:dateTimePickerView];
        [dateTimePickerView showHcdDateTimePicker];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
