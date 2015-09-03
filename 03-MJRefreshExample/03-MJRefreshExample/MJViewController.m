//
//  MJViewController.m
//  03-MJRefreshExample
//
//  Created by apple on 14-6-3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJRefresh.h"

#define MJRandomText [NSString stringWithFormat:@"text--%@", [NSDate date]]

@interface MJViewController ()
@property (nonatomic, strong) NSMutableArray *data;
@end

@implementation MJViewController

- (NSMutableArray *)data
{
    if (!_data) {
        self.data = [NSMutableArray array];
        
        for (int i = 0; i<10; i++) {
            [self.data addObject:MJRandomText];
        }
    }
    return _data;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    __unsafe_unretained MJViewController *vc = self;
    
    [self.tableView addHeaderWithCallback:^{
        // 2秒后有数据回来了
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            // 添加2行新数据
            for (int i = 0; i<2; i++) {
                [vc.data insertObject:MJRandomText atIndex:0];
            }
            
            // 刷新表格
            [vc.tableView reloadData];
            
            // 结束刷新
            [vc.tableView headerEndRefreshing];
        });
    }];
    [self.tableView headerBeginRefreshing];
    
    [self.tableView addFooterWithTarget:self action:@selector(loadMoreData)];
}

- (void)loadMoreData
{
    // 2秒后有数据回来了
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 添加2行新数据
        for (int i = 0; i<2; i++) {
            [self.data addObject:MJRandomText];
        }
        
        // 刷新表格
        [self.tableView reloadData];
        
        // 结束刷新
        [self.tableView footerEndRefreshing];
    });
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.创建cell
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    // 2.设置cell的数据
    cell.textLabel.text = self.data[indexPath.row];
    
    return cell;
}
@end
