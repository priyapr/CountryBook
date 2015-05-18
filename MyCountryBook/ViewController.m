//
//  ViewController.m
//  MyCountryBook
//
//  Created by Priya on 03/05/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "ViewController.h"
#import "ActualPage.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mypageview;

- (void)viewDidLoad {
    [super viewDidLoad];
    mypageview=[[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    mypageview.dataSource=self;
    mypageview.delegate=self;
    
    ActualPage *pageobject=[self pagefunction:1];
    NSArray *ary=[NSArray arrayWithObjects:pageobject, nil];
    [mypageview setViewControllers:ary direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    [self addChildViewController:mypageview];
    [self.view addSubview:mypageview.view];
    [mypageview didMoveToParentViewController:self];
    
}

-(ActualPage *)pagefunction:(NSUInteger)index
{
    ActualPage *page=[[ActualPage alloc]initWithNibName:@"ActualPage" bundle:nil];
    page.index=index;
    return page;
}

-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return 10;
}
-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 1;
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSInteger pageno=[(ActualPage *)viewController index];
    pageno++;
    if (pageno <=10) {
        return [self pagefunction:pageno];
    }
    return nil;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSInteger pageno=[(ActualPage *)viewController index];
    pageno--;
    if ((pageno > 0) && (pageno <= 10)) {
        return [self pagefunction:pageno];
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
