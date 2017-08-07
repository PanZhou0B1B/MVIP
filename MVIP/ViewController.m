//
//  ViewController.m
//  MVIP
//
//  Created by zhoupanpan on 2017/7/20.
//  Copyright © 2017年 panzhow. All rights reserved.
//

#import "ViewController.h"
#import "OneInteractor.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)OneInteractor *myInteractor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myInteractor = [OneInteractor new];
    [_myInteractor attachView:self];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"Yep" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
    [btn addTarget:_myInteractor action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, 200, 200)];
    table.dataSource = self;
    table.delegate = self;
    [self.view addSubview:table];
    
    [_myInteractor renderTable:^(id ret) {
        [table reloadData];
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //route---Interactor
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _myInteractor.tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString * title = _myInteractor.tableData[indexPath.row];
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = title;
    return cell;
}
@end
