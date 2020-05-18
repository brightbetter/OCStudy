//
//  BWBlock.m
//  OCStudy
//
//  Created by Bright on 2020/5/18.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWBlock.h"

typedef int(^testBlock)(int num);

@interface BWBlock ()

@property (nonatomic, copy) testBlock block2;

@end

@implementation BWBlock

- (void)testMethod {
    int multiplier = 3;
    __block int multiplier2 = 3;
    testBlock block = ^int(int num) {
        multiplier2 = 4;
      return multiplier * num + multiplier2;
    };
    block(2);
    
    self.block2 = block;
    self.block2(5);
    
    //打印类型
}

@end
