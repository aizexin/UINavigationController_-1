//
//  FirstViewController.m
//  UINavigationController_base
//
//  Created by 夏婷 on 15/9/19.
//  Copyright (c) 2015年 夏婷. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self navigationBarStyleSetting];
    self.title = @"根视图";
}

-(void)buttonClicked:(UIButton *)button
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    //推出下一级界面
    [self.navigationController pushViewController:svc animated:YES];
}

#pragma mark - 关于导航条样式的设置

-(void)navigationBarStyleSetting
{
    //取出导航条
    UINavigationBar *gationBar = self.navigationController.navigationBar;
    //设置导航条样式
    gationBar.barStyle = UIBarStyleDefault;
    /*
     UIBarStyleDefault
     白色半透明
     UIBarStyleBlack
     黑色半透明
     UIBarStyleBlackOpaque
     黑色半透明
     UIBarStyleBlackTranslucent
     黑色半透明
     */
    //设导航条半透明或不透明，YES半透明，NO不透明
    //self.view的坐标原点YES半透明时为屏幕左上角，如果不透明从导航条左下角
    gationBar.translucent = NO;
    
    //设置背景图片
//    [gationBar setBackgroundImage:[UIImage imageNamed:@"Nav1.png"] forBarMetrics:UIBarMetricsDefault];
    /*
     UIBarMetricsDefault
     纵屏不带备注
     UIBarMetricsCompact
     横屏不带备注
     UIBarMetricsDefaultPrompt
     纵屏带备注
     UIBarMetricsCompactPrompt
     横屏带备注
     */
    /*
     导航条高度为44个坐标点
     关于图片的设置，图片的高度刚好是（44、88、132个像素高的时候），状态栏是紧靠在导航条上
     如果图片高度过大或过小，图片会被拉伸或压缩为64坐标点高，状态栏浮在导航条上方
     */
    //设置导航条的背景色
    gationBar.barTintColor = [UIColor magentaColor];
    
    //设置镂空部分的颜色
    gationBar.tintColor = [UIColor whiteColor];
    
    //设置导航标题的文字字体和颜色,可以不掌握（拓展）
    gationBar.titleTextAttributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:30],NSForegroundColorAttributeName:[UIColor whiteColor]};
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
