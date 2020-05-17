//
//  BWCustomScrollView.m
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import "BWCustomScrollView.h"


@interface BWCustomScrollView () <UIGestureRecognizerDelegate>
@end

@implementation BWCustomScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    _panGesture = [[BWPanGestureOne alloc] initWithTarget:self action:@selector(panAction:)];
    _panGesture.delegate = self;
    _panGesture.cancelsTouchesInView = NO;
    [self addGestureRecognizer:_panGesture];
    
    return self;
    
}

///是否响应手势的四个touch方法
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
//
//    NSLog(@"view %@", gestureRecognizer.view);
//    if (self.bounds.origin.x == self.contentSize.width - self.frame.size.width) {
//
//        CGPoint prevPoint = [touch previousLocationInView:self];
//        CGPoint currentPoint = [touch locationInView:self];
//        if (currentPoint.x < prevPoint.x) {
//
//            return NO;
//
//        }
//
//    }
//    return YES;
//
//}

- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {

    NSLog(@"gestureRecognizerShouldBegin %@", gestureRecognizer.view);
    if (self.bounds.origin.x == self.contentSize.width - self.frame.size.width) {

        //往左滑动
        CGPoint transitionPoint = [gestureRecognizer translationInView:self];
        if (transitionPoint.x < 0) {
            return NO;
        }
        return YES;
    }

    return YES;
}

- (void)panAction:(UIPanGestureRecognizer *)gestureRecognizer {
    
    NSLog(@"bounds.x %f", self.bounds.origin.x);
    CGRect tmpBounds = self.bounds;
    
    ///横向的scrollView，往左/往右
    //UIEvent locationInview  prevLocationInview
    
    CGPoint transitionPoint = [gestureRecognizer translationInView:self];
    
    
    ///移动距离是有最大值和最小值
    CGFloat minimumOffset = 0.f;
    CGFloat maxOffset = _contentSize.width - tmpBounds.size.width;
    CGFloat actualOffset = fmax(minimumOffset, fmin(maxOffset, (tmpBounds.origin.x - transitionPoint.x)));
    tmpBounds.origin.x = actualOffset;
    
    
//    if (transitionPoint.x < 0 && (tmpBounds.origin.x - transitionPoint.x) <= (_contentSize.width - tmpBounds.size.width)) {  //往左
//
//        tmpBounds.origin.x -= transitionPoint.x;
//
//    } else if (transitionPoint.x > 0 && (tmpBounds.origin.x - transitionPoint.x) >= 0) {  //往右
//
//        tmpBounds.origin.x -= transitionPoint.x;
//
//    }
    
    [gestureRecognizer setTranslation:CGPointZero inView:self];
    self.bounds = tmpBounds;
    
}

@end
