//
//  BWThreadTest.h
//  OCStudyTest
//
//  Created by Bright on 2020/3/29.
//  Copyright © 2020 Bright. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BWThreadTest : NSObject

/// 多个线程同时读写一个内存数据
+ (void)numRW;
- (void)start;

@end

NS_ASSUME_NONNULL_END
