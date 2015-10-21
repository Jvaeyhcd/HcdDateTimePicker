# HcdDateTimePicker
 A beautiful DateTimePicker.<br/>

##Usage
You can clone this project by git.
```
git clone https://github.com/Jvaeyhcd/HcdDateTimePicker.git
```
Then you should copy the **HCDDateTimePickerView** folder into your project.

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
```
##TODO
Add DatePickerDateMode,DatePickerTimeMode and DatePickerDatetimeMode
