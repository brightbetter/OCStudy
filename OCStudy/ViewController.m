//
//  ViewController.m
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "ViewController.h"
//#import "BWSwizzle+bwMethod.h"
#import "BWCatagoryTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [BWCatagoryTest test];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}


@end
