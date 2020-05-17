//
//  BWCustomScrollView.h
//  OCStudy
//
//  Created by Bright on 2020/5/17.
//  Copyright © 2020 Bright. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BWPanGestureOne.h"

NS_ASSUME_NONNULL_BEGIN

@interface BWCustomScrollView : UIView

@property(nonatomic, assign) CGSize contentSize;
@property(nonatomic, strong) BWPanGestureOne *panGesture;


@end

NS_ASSUME_NONNULL_END
