//
//  BWCustomScrollViewController.m
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWCustomScrollViewController.h"
#import "BWCustomScrollView.h"

@interface BWCustomScrollViewController ()

@end

@implementation BWCustomScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    BWCustomScrollView *scrollView = [[BWCustomScrollView alloc] initWithFrame:CGRectMake(150.f, 88.f, 100, 150.f)];
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width*2, scrollView.frame.size.height);
    scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];
    
    ///添加子view
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(50.f, 20.f, 40.f, 40.f)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueView];
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
