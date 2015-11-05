//
//  ThirdViewController.m
//  UINavigationController_base
//
//  Created by 夏婷 on 15/9/19.
//  Copyright (c) 2015年 夏婷. All rights reserved.
//

#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self toolbarStyleSetting];
    [self toolbarItemSetting];
    
}
-(void)buttonClicked:(UIButton *)button
{
    ForthViewController *fvc = [[ForthViewController alloc]init];
    //推出下一级
    [self.navigationController pushViewController:fvc animated:YES];
}

#pragma - 关于toolBarItem的设置
-(void)toolbarItemSetting
{
    //创建系统样式UIBarButtonItem
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(bookMarkClicked:)];
    /*
     
     UIBarButtonSystemItemDone,
     UIBarButtonSystemItemCancel,
     UIBarButtonSystemItemEdit,
     UIBarButtonSystemItemSave,
     UIBarButtonSystemItemAdd,
     UIBarButtonSystemItemFlexibleSpace,
     UIBarButtonSystemItemFixedSpace,
     UIBarButtonSystemItemCompose,
     UIBarButtonSystemItemReply,
     UIBarButtonSystemItemAction,
     UIBarButtonSystemItemOrganize,
     UIBarButtonSystemItemBookmarks,
     UIBarButtonSystemItemSearch,
     UIBarButtonSystemItemRefresh,
     UIBarButtonSystemItemStop,
     UIBarButtonSystemItemCamera,
     UIBarButtonSystemItemTrash,
     UIBarButtonSystemItemPlay,
     UIBarButtonSystemItemPause,
     UIBarButtonSystemItemRewind,
     UIBarButtonSystemItemFastForward,
     */
    
    
    //通过标题创建Item
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:@"写个啥" style:UIBarButtonItemStyleDone target:nil action:nil];
    
    //通过图片创建
    UIImage *image = [UIImage imageNamed:@"player_down_3"];
    //让图片总是显示原色
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem *space1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    space1.width = 80;
    UIBarButtonItem *space2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    space2.width = 80;
    /*
     UIBarButtonSystemItemFixedSpace
     自定义宽度的空格
     UIBarButtonSystemItemFlexibleSpace
     系统等分算空格宽度
     */
    
    NSArray *toolbatItems = @[item1,space1,item2,space2,item3];
    //设置toolbar的所有Item
    self.toolbarItems = toolbatItems;
    
    
}
-(void)bookMarkClicked:(UIBarButtonItem *)item
{
    NSLog(@"被点击了");
}


-(void)toolbarStyleSetting
{
    //找到导航控制器的toolbar
    UIToolbar *toolbar = self.navigationController.toolbar;
    //设置样式
    toolbar.barStyle = UIBarStyleDefault;
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
    
    //设置半透明或不透明
    toolbar.translucent = NO;
    //设置背景颜色
    toolbar.barTintColor = [UIColor yellowColor];
    //设置背景图
//    [toolbar setBackgroundImage:[UIImage imageNamed:@"navigationbar"] forToolbarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    //设置备注，关于这个界面的说明，工作很少用的
//    self.navigationItem.prompt = @"我是备注";
    
    //设置镂空部分的颜色
    toolbar.tintColor = [UIColor redColor];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //设置toolbar显示
    self.navigationController.toolbarHidden = NO;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //设置tolbar隐藏
    self.navigationController.toolbarHidden = YES;
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
