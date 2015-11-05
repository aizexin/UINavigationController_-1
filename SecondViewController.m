//
//  SecondViewController.m
//  UINavigationController_base
//
//  Created by 夏婷 on 15/9/19.
//  Copyright (c) 2015年 夏婷. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"二级视图";
    
    [self navigationItemSetting];
    
}
#pragma mark - 关于导航条BarButtonItem的定制

-(void)navigationItemSetting
{
    //创建系统样式的UIBarButtonItem
    //第一参数样式
    //点击item时，调用函数的对象
    //点击item时,调用函数的名字
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(itemClicked:)];
    self.navigationItem.leftBarButtonItem = item1;
    
    //2.用文字创建UIBarButtonItem
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:@"标题" style:UIBarButtonItemStyleDone target:nil action:nil];
    //设置右边BarButtonItem
    self.navigationItem.rightBarButtonItem = item2;
    //设置镂空颜色
    self.navigationController.navigationBar.tintColor = [UIColor cyanColor];
    
    //用图片创建
    UIImage *image = [UIImage imageNamed:@"player_down_1"];
    //创建一个只显示原色的图片对象
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.leftBarButtonItem = item3;
    
    
    
    //4.用继承于UIView的视图类的对象创建UIBarButtonItem
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [button setImage:[UIImage imageNamed:@"player_down_1"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item4 = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = item4;
    
    self.navigationItem.title = @"AAA";
    //使用范围会广一点，也可以显示到TabBarItem
    self.title = @"二级视图1";
    self.navigationItem.title = @"AAA";
    //设置标题视图
    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
    titleView.backgroundColor = [UIColor orangeColor];
    self.navigationItem.titleView = titleView;
    // 左右设置多个Item
    NSArray *leftItems = @[item1,item3];
    NSArray *rigthItems = @[item2,item4];
    //设置左边的多个Item，显示顺序，从左到右，对应数组中的顺序
    self.navigationItem.leftBarButtonItems = leftItems;
    //设置右边的多个Item，显示顺序，从右到左对应数组中的顺序
    self.navigationItem.rightBarButtonItems = rigthItems;
    
    //设置返回Item，在下一个界面起效
    //返回Item不支持系统样式、以及用UIView或其子类的对象创建的UIBarButtonItem,支持用文字或图片创建的Item
    self.navigationItem.backBarButtonItem = item4;
    
}

-(void)buttonClicked:(UIButton *)button
{
    ThirdViewController *tvc = [[ThirdViewController alloc]init];
    //推出下一级界面
    [self.navigationController pushViewController:tvc animated:YES];
}

-(void)btnClicked
{
    
}

-(void)itemClicked:(UIBarButtonItem *)item
{
    NSLog(@"item被点击");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
