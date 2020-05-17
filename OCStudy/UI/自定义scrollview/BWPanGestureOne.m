//
//  BWPanGestureOne.m
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWPanGestureOne.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation BWPanGestureOne

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchBegan ");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

@end
