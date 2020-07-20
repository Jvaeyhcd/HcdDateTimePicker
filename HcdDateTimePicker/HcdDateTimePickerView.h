//
//  Created by Jvaeyhcd on 15/10/21.
//
//

#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kScreen_Width [UIScreen mainScreen].bounds.size.width

#define kScaleFrom_iPhone5_Desgin(_X_) floor(_X_ * (kScreen_Width/320))

#import <UIKit/UIKit.h>
#import "MXSCycleScrollView.h"

typedef enum {
    DatePickerDateMode,
    DatePickerTimeMode,
    DatePickerDateTimeMode,
    DatePickerYearMonthMode,
    DatePickerMonthDayMode,
    DatePickerHourMinuteMode,
    DatePickerDateHourMinuteMode
} DatePickerMode;

typedef void(^DatePickerCompleteAnimationBlock)(BOOL Complete);
typedef void(^ClickedOkBtn)(NSString *dateTimeStr);

@interface HcdDateTimePickerView : UIView <MXSCycleScrollViewDatasource,MXSCycleScrollViewDelegate>
@property (nonatomic,copy  ) ClickedOkBtn clickedOkBtn;

@property (nonatomic,assign) DatePickerMode datePickerMode;

@property (nonatomic,assign) NSInteger maxYear;
@property (nonatomic,assign) NSInteger minYear;

@property (nonatomic,strong) UIColor *topViewColor;
@property (nonatomic,strong) UIColor *buttonTitleColor;

/// 顶部文字颜色
@property (nonatomic,strong) UIColor *titleColor;

/// 顶部文字
@property (nonatomic,copy  ) NSString *title;

/// 取消文字
@property (nonatomic, copy) NSString *cancleText;

/// 取消文字颜色
@property (nonatomic, strong) UIColor *cancleColor;

/// 确定文字
@property (nonatomic, copy) NSString *okText;

/// 确定文字颜色
@property (nonatomic, strong) UIColor *okColor;

-(instancetype)initWithDefaultDatetime:(NSDate*)dateTime;
-(instancetype)initWithDatePickerMode:(DatePickerMode)datePickerMode defaultDateTime:(NSDate*)dateTime;
-(void) showHcdDateTimePicker;
@end
