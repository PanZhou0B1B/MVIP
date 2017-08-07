//
//  OneInteractor.m
//  MVIP
//
//  Created by zhoupanpan on 2017/7/20.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "OneInteractor.h"
#import "OnePresenter.h"

@interface OneInteractor ()<MTXPresenterDelegate>
@property (nonatomic,strong)OnePresenter *mtx_presenter;//具体的
@end
@implementation OneInteractor


- (instancetype)init{
    self = [super init];
    if(self){
        self.mtx_presenter = [OnePresenter new];
        [_mtx_presenter attachInteractor:self];
        _mtx_presenter.presenterDelegate = self;
    }
    return self;
}

- (void)mtx_presenter:(id)presenter loadData:(id)data{
    NSLog(@"data back");
    //feedbackblock 返回相关数据结果
    //若返回出现问题，则展示错误页
}

- (void)mtx_presenter:(id)presenter retAction:(id)data{
    //mtx_view 响应具体的按钮变化或者联动自身Interactor数据
}

- (void)btnAction:(id)sender{
    //
    //[_mtx_presenter doAction]
}
- (void)renderTable:(feedbackBlock)fb{
    //[_mtx_presenter request Data]
    self.tableData = @[@"cell1",@"cell2"];
    fb(nil);
}
@end
