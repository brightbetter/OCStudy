//
//  BWSwizzle.m
//  OCStudy
//
//  Created by Bright on 2020/7/31.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWCatagory.h"

@implementation BWCatagory

+ (void)load {
    NSLog(@"call load original method");
}

+ (void)initialize {
    NSLog(@"call initialize original method");
}

+ (void)testClassMethod {
    NSLog(@"call class original method");
}

- (void)testInstanceMethod {
    NSLog(@"call instance original method");
}

@end
