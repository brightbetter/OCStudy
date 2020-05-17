//
//  BWThreadTest.m
//  OCStudyTest
//
//  Created by Bright on 2020/3/29.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWThreadTest.h"

@interface BWThreadTest ()

@property (nonatomic, strong) NSThread *thread1;

@property (nonatomic, strong) NSThread *thread2;

@end

@implementation BWThreadTest


//大于等于一个线程的和
+ (void)numRW {
    __block int count = 0;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread detachNewThreadWithBlock:^{
            for(int i=0;i<100;i++){
                count++;
                NSLog(@"线程1 %@ i=%d count=%d",[NSThread currentThread],i, count);
            }
        }];
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread detachNewThreadWithBlock:^{
            for(int i=0;i<100;i++){
                count++;
                NSLog(@"线程2 %@, i=%d count=%d",[NSThread currentThread],i, count);
            }
        }];
    });
    
}

- (void)start {
    [self.thread1 start];
    [self.thread2 start];
}

@end
