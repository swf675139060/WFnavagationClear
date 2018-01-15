//
//  ViewController.m
//  WFnavagationClear
//
//  Created by 小事科技 on 2018/1/15.
//  Copyright © 2018年 小事科技. All rights reserved.
//

#import "ViewController.h"
#import "WFNavigationBar.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) UITableView * tableView;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
   
    
}

//  仅设置当前页面
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    WFNavigationBar *NavigationBar =  (WFNavigationBar *)self.navigationController.navigationBar;
    
    //方法1 通过是否添加layer设置
//    [NavigationBar displayColorLayer:YES];
    //方法 2通过alpha来设置是否透明
    [NavigationBar setBaralpha:1];
    [[self.navigationController.navigationBar subviews] objectAtIndex:0].alpha = 1;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatUI];
}


-(void)creatUI{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    
    
}


#pragma mark -- UITabelViewDataSource
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
        return 0;
   
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

#pragma tabelView   cell的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return 9;
  
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [[UITableViewCell alloc]init];
    return cell;
}

#pragma mark- 点击cell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    CGFloat alpha = scrollView.contentOffset.y/64;
    WFNavigationBar *NavigationBar =  (WFNavigationBar *)self.navigationController.navigationBar;
    [NavigationBar setBaralpha:alpha];
    [[self.navigationController.navigationBar subviews] objectAtIndex:0].alpha = alpha;
}




@end
