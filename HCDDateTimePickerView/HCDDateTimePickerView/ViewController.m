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
    
    // Do any additional setup after loading the view, typically from a nib.
    dateTimePickerView = [[HcdDateTimePickerView alloc] initWithDefaultDatetime:[[NSDate alloc]initWithTimeIntervalSinceNow:0]];
    dateTimePickerView.clickedOkBtn = ^(NSString * datetimeStr){
        NSLog(@"%@", datetimeStr);
    };
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
