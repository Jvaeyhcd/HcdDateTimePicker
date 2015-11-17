# HcdDateTimePicker
 A beautiful DateTimePicker.<br/>

##Usage
You can clone this project by git.
```
git clone https://github.com/Jvaeyhcd/HcdDateTimePicker.git
```
Then you should copy the **HCDDateTimePickerView** folder into your project.

<video id="video" controls="" preload="none" poster="http://media.w3.org/2010/05/sintel/poster.png">
      <source id="mp4" src="http://media.w3.org/2010/05/sintel/trailer.mp4" type="video/mp4">
      <source id="webm" src="http://media.w3.org/2010/05/sintel/trailer.webm" type="video/webm">
      <source id="ogv" src="http://media.w3.org/2010/05/sintel/trailer.ogv" type="video/ogg">
      <p>Your user agent does not support the HTML5 Video element.</p>
</video>

![Alt Text](https://github.com/Jvaeyhcd/HcdDateTimePicker/blob/master/HCDDateTimePickerView/demo.gif)

```
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

```
##TODO
Add DatePickerDateMode,DatePickerTimeMode and DatePickerDatetimeMode
