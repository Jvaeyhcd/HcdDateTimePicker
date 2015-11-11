//
//  ____    ___   _        ___  _____  ____  ____  ____
// |    \  /   \ | T      /  _]/ ___/ /    T|    \|    \
// |  o  )Y     Y| |     /  [_(   \_ Y  o  ||  o  )  o  )
// |   _/ |  O  || l___ Y    _]\__  T|     ||   _/|   _/
// |  |   |     ||     T|   [_ /  \ ||  _  ||  |  |  |
// |  |   l     !|     ||     T\    ||  |  ||  |  |  |
// l__j    \___/ l_____jl_____j \___jl__j__jl__j  l__j
//
//
//	Powered by Polesapp.com
//
//
//  ViewController.m
//  HCDDateTimePickerView
//
//  Created by funmitech-huangchengda on 15/10/21.
//  Copyright © 2015年 Polesapp. All rights reserved.
//

#import "ViewController.h"
#import "HcdDateTimePickerview/HcdDateTimePickerView.h"
#import "UIColor+HcdCustom.h"

@interface ViewController ()
{
    HcdDateTimePickerView * dateTimePickerView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 30)];
    
    [button setTitle:@"open" forState: UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithHexString:@"0x000000"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openDatePicker) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    NSArray *segmentItemArray = [[NSArray alloc] initWithObjects:@"日期",@"时间",@"日期和时间", nil];
    UISegmentedControl * segmentControl = [[UISegmentedControl alloc] initWithItems:segmentItemArray];
    segmentControl.frame = CGRectMake(50, 160, 220, 30);
    [segmentControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmentControl];
    
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)segmentAction:(UISegmentedControl *)Seg{
    
    NSInteger Index = Seg.selectedSegmentIndex;
    
    switch (Index) {
            
        case 0:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDateMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
            };
            break;
        case 1:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerTimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
            };
            break;
        case 2:
            dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDatePickerMode:DatePickerDatetimeMode defaultDateTime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
            dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
                NSLog(@"%@", datetimeStr);
            };
            break;
        default:
            break;
            
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)openDatePicker
{
    if (dateTimePickerView) {
        [self.view addSubview:dateTimePickerView];
        [dateTimePickerView showHcdDateTimePicker];
    }
}

@end
