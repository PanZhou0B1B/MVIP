//
//  OnePresenter.h
//  MVIP
//
//  Created by zhoupanpan on 2017/7/20.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "MTXBasePresenter.h"
#import "MTXPresenterDelegate.h"
@interface OnePresenter : MTXBasePresenter
@property (nonatomic,weak)id<MTXPresenterDelegate> presenterDelegate;
@end
