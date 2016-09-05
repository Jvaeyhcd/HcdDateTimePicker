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
//  RBCustomDatePickerView.h
//
//
//  Created by fangmi-huangchengda on 15/10/21.
//
//

#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kScreen_Width [UIScreen mainScreen].bounds.size.width

#define kScaleFrom_iPhone5_Desgin(_X_) (_X_ * (kScreen_Width/320))

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
@property (nonatomic,strong) ClickedOkBtn clickedOkBtn;
@property (nonatomic,assign) NSInteger curYear;//当前年
@property (nonatomic,assign) NSInteger curMonth;//当前月
@property (nonatomic,assign) NSInteger curDay;//当前日
@property (nonatomic,assign) NSInteger curHour;//当前小时
@property (nonatomic,assign) NSInteger curMin;//当前分
@property (nonatomic,assign) NSInteger curSecond;//当前秒

@property (nonatomic,assign) DatePickerMode datePickerMode;

-(instancetype)initWithDefaultDatetime:(NSDate*)dateTime;
-(instancetype)initWithDatePickerMode:(DatePickerMode)datePickerMode defaultDateTime:(NSDate*)dateTime;
-(void) showHcdDateTimePicker;
@end
