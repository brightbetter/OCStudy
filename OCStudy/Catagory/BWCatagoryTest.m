//
//  BWCatagoryTest.m
//  OCStudy
//
//  Created by Bright on 2020/7/31.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWCatagoryTest.h"
#import "BWCatagory.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation BWCatagoryTest

+ (void)test {
    Class instanceClass = objc_getClass("BWCatagory");
        Class metaClass = objc_getMetaClass("BWCatagory");
        BWCatagory *swizzle = [BWCatagory new];
    //    [BWSwizzle testClassMethod];
        unsigned int metaMethodCount;
        Method *metaMethodList = class_copyMethodList(metaClass, &metaMethodCount);
        
        for (unsigned int i = 0; i < metaMethodCount; i++) {
            NSLog(@"%@", @(i));
            SEL name = method_getName((metaMethodList[i]));
            IMP imp = method_getImplementation((metaMethodList[i]));
            imp(instanceClass, name);
        }
        free(metaMethodList);
        
        
        unsigned int instanceMethodCount;
        
        Method *instanceMethodList = class_copyMethodList(instanceClass, &instanceMethodCount);
        
        for (unsigned int i = 0; i < instanceMethodCount; i++) {
            NSLog(@"%@", @(i));
    //        SEL name = method_getName((metaMethodList[i]));
    //        IMP imp = method_getImplementation((metaMethodList[i]));
    //        imp(swizzle, name);
            
            SEL name = method_getName((instanceMethodList[i]));
            IMP imp = method_getImplementation((instanceMethodList[i]));
            imp(instanceClass, name);
           
    //        [swizzle testInstanceMethod];
    //        objc_msgSend(swizzle, name);
            
            
        }
        method_exchangeImplementations(instanceMethodList[0], instanceMethodList[1]);
        [swizzle testInstanceMethod];
        free(instanceMethodList);
}

@end
