//
//  BWCatagory+bwMethod.m
//  OCStudy
//
//  Created by Bright on 2020/7/31.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWCatagory+bwMethod.h"


@implementation BWCatagory (bwMethod)

+ (void)load {
    NSLog(@"call load swizzle method");
}

+ (void)initialize {
    NSLog(@"call initialize swizzle method");
}

+ (void)testClassMethod {
    NSLog(@"call class swizzle method");
}

- (void)testInstanceMethod {
    NSLog(@"call instance swizzle method");
}

@end
