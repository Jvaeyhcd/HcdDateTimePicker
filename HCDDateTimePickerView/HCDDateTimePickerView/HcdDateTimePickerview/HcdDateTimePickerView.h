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

#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define WIDTH [UIScreen mainScreen].bounds.size.width

#import <UIKit/UIKit.h>
#import "MXSCycleScrollView.h"

typedef void(^DatePickerCompleteAnimationBlock)(BOOL Complete);
typedef void(^ClickedOkBtn)(NSString *dateTimeStr);

@interface HcdDateTimePickerView : UIView <MXSCycleScrollViewDatasource,MXSCycleScrollViewDelegate>
@property (nonatomic,strong) ClickedOkBtn clickedOkBtn;
-(instancetype)initWithDefaultDatetime:(NSDate*)dateTime;
-(void) showHcdDateTimePicker;
@end
