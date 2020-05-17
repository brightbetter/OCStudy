//
//  ViewController.m
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "ViewController.h"
#import "BWCustomScrollViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self presentViewController:[BWCustomScrollViewController new] animated:YES completion:nil];
}


@end
