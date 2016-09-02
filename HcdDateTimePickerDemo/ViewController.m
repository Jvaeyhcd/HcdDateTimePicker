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
    
    UIButton *btn4 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, CGRectGetMaxY(btn3.frame) + kBasePadding, kScreenWidth - 2*kBasePadding, 40)];
    btn4.layer.cornerRadius = 4;
    btn4.backgroundColor = [UIColor grayColor];
    [btn4 setTitle:@"YEAR-MONTH" forState:UIControlStateNormal];
    btn4.tag = 4;
    [btn4 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    UIButton *btn5 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, CGRectGetMaxY(btn4.frame) + kBasePadding, kScreenWidth - 2*kBasePadding, 40)];
    btn5.layer.cornerRadius = 4;
    btn5.backgroundColor = [UIColor grayColor];
    [btn5 setTitle:@"MONTH-DAY" forState:UIControlStateNormal];
    btn5.tag = 5;
    [btn5 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];
    
    UIButton *btn6 = [[UIButton alloc]initWithFrame:CGRectMake(kBasePadding, CGRectGetMaxY(btn5.frame) + kBasePadding, kScreenWidth - 2*kBasePadding, 40)];
    btn6.layer.cornerRadius = 4;
    btn6.backgroundColor = [UIColor grayColor];
    [btn6 setTitle:@"HOUR-MINUTE" forState:UIControlStateNormal];
    btn6.tag = 6;
    [btn6 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn6];
    
}

- (void)btnClicked:(UIButton *)btn {
    NSInteger tag = btn.tag;
    
    __block ViewController *weakSelf = self;
    
    switch (tag) {
        case 1:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDateTimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 2:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDateMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 3:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerTimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 4:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerYearMonthMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 5:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerMonthDayMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
                weakSelf.timeLbl.text = datetimeStr;
            };
            break;
        case 6:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerHourMinuteMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:1000]];
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
