//
//  ViewController.m
//  QPageViewExample
//
//  Created by JHQ0228 on 2016/10/8.
//  Copyright © 2016年 QianQian-Studio. All rights reserved.
//

#import "ViewController.h"

#import "QPageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)pageViewDemo {
    
    // 创建分页视图控件
    
    QPageView *pageView1 = [[QPageView alloc] init];
    
    QPageView *pageView2 = [[QPageView alloc] initWithFrame:CGRectMake(0, 20, 300, 150)];
    
    QPageView *pageView3 = [QPageView q_pageView];
    
    QPageView *pageView4 = [QPageView q_pageViewWithImageNames:@[@"img_00", @"img_01", @"img_02"]
                                                    autoScroll:YES
                                                autoScrollTime:2.0
                                         pageIndicatorPosition:Right];
    
    NSLog(@"%@", pageView1);
    NSLog(@"%@", pageView2);
    NSLog(@"%@", pageView3);
    NSLog(@"%@", pageView4);
}

- (void)pageViewDemo1 {
    
    // 创建分页视图控件
    QPageView *pageView = [QPageView q_pageView];
    
    pageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 2);
    
    // 设置显示的图片
    pageView.imageNames = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    
    // 设置页码视图的颜色
    pageView.currentPageIndicatorColor = [UIColor redColor];
    pageView.pageIndicatorColor = [UIColor greenColor];
    
    // 设置页码视图的位置
    pageView.pageIndicatorPosition = Right;
    
    // 设置是否隐藏页码视图
    pageView.hidePageIndicator = NO;
    
    // 设置滚动方向
    pageView.scrollDirectionPortrait = YES;
    
    [self.view addSubview:pageView];
}

- (void)pageViewDemo2 {
    
    // 设置显示的图片
    NSArray *imageNameArr = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    
    // 创建分页视图控件
    QPageView *pageView = [QPageView q_pageViewWithImageNames:imageNameArr
                                                   autoScroll:YES
                                               autoScrollTime:3.0
                                        pageIndicatorPosition:Center];
    
    pageView.frame = CGRectMake(0,
                                self.view.bounds.size.width / 2 + 20,
                                self.view.bounds.size.width,
                                self.view.bounds.size.width / 2);
    
    [self.view addSubview:pageView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self pageViewDemo1];
    
    [self pageViewDemo2];
}

@end
