//
//  OneInteractor.h
//  MVIP
//
//  Created by zhoupanpan on 2017/7/20.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "MTXBaseInteractor.h"
#import "MTXMVIPCommon.h"

@interface OneInteractor : MTXBaseInteractor
@property (nonatomic,strong)NSArray *tableData;

- (void)btnAction:(id)sender;
- (void)renderTable:(feedbackBlock)fb;
@end
