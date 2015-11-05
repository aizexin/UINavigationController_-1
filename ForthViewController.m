//
//  ForthViewController.m
//  UINavigationController_base
//
//  Created by 夏婷 on 15/9/19.
//  Copyright (c) 2015年 夏婷. All rights reserved.
//

#import "ForthViewController.h"

@interface ForthViewController ()

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

-(void)buttonClicked:(UIButton *)button
{
    //返回到上一级界面
//    [self.navigationController popViewControllerAnimated:YES];
    //返回到第一级视图
//    [self.navigationController popToRootViewControllerAnimated:YES];
    //拿到导航控制器中所有视图
    NSArray *viewControllers = self.navigationController.viewControllers;
    //返回当前导航控制器中任意一级视图
    [self.navigationController popToViewController:viewControllers[2] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //设置导航条隐藏
    self.navigationController.navigationBarHidden = YES;
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //设置导航条不隐藏
    self.navigationController.navigationBarHidden = NO;
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
