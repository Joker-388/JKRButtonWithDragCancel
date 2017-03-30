//
//  JKRButton.m
//  JKRButtonDemo
//
//  Created by tronsis_ios on 17/3/22.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "JKRButton.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation JKRButton

/**
 2017-03-22 12:07:35.997 JKRButtonDemo[2656:133190] Ivar name:_externalFlatEdge Ivar TypeEncoder:Q
 2017-03-22 12:07:36.014 JKRButtonDemo[2656:133190] Ivar name:_contentLookup Ivar TypeEncoder:^{__CFDictionary=}
 2017-03-22 12:07:36.014 JKRButtonDemo[2656:133190] Ivar name:_contentEdgeInsets Ivar TypeEncoder:{UIEdgeInsets="top"d"left"d"bottom"d"right"d}
 2017-03-22 12:07:36.014 JKRButtonDemo[2656:133190] Ivar name:_titleEdgeInsets Ivar TypeEncoder:{UIEdgeInsets="top"d"left"d"bottom"d"right"d}
 2017-03-22 12:07:36.014 JKRButtonDemo[2656:133190] Ivar name:_imageEdgeInsets Ivar TypeEncoder:{UIEdgeInsets="top"d"left"d"bottom"d"right"d}
 2017-03-22 12:07:36.014 JKRButtonDemo[2656:133190] Ivar name:_backgroundView Ivar TypeEncoder:@"UIImageView"
 2017-03-22 12:07:36.015 JKRButtonDemo[2656:133190] Ivar name:_floatingContentView Ivar TypeEncoder:@"_UIFloatingContentView"
 2017-03-22 12:07:36.015 JKRButtonDemo[2656:133190] Ivar name:_contentBackdropView Ivar TypeEncoder:@"UIVisualEffectView"
 2017-03-22 12:07:36.015 JKRButtonDemo[2656:133190] Ivar name:_imageView Ivar TypeEncoder:@"UIImageView"
 2017-03-22 12:07:36.016 JKRButtonDemo[2656:133190] Ivar name:_titleView Ivar TypeEncoder:@"UILabel"
 2017-03-22 12:07:36.028 JKRButtonDemo[2656:133190] Ivar name:_initialized Ivar TypeEncoder:B
 2017-03-22 12:07:36.029 JKRButtonDemo[2656:133190] Ivar name:_lastDrawingControlState Ivar TypeEncoder:Q
 2017-03-22 12:07:36.029 JKRButtonDemo[2656:133190] Ivar name:_selectGestureRecognizer Ivar TypeEncoder:@"UITapGestureRecognizer"
 2017-03-22 12:07:36.048 JKRButtonDemo[2656:133190] Ivar name:_buttonFlags Ivar TypeEncoder:{?="reversesTitleShadowWhenHighlighted"b1"adjustsImageWhenHighlighted"b1"adjustsImageWhenDisabled"b1"autosizeToFit"b1"disabledDimsImage"b1"showsTouchWhenHighlighted"b1"buttonType"b8"shouldHandleScrollerMouseEvent"b1"titleFrozen"b1"resendTraitToImageViews"b2"animateNextHighlightChange"b1"blurEnabled"b1"visualEffectViewEnabled"b1"suppressAccessibilityUnderline"b1"requiresLayoutForPropertyChange"b1}
 2017-03-22 12:07:36.049 JKRButtonDemo[2656:133190] Ivar name:_effectiveContentView Ivar TypeEncoder:@"UIView"
 2017-03-22 12:07:36.049 JKRButtonDemo[2656:133190] Ivar name:_maskAnimationView Ivar TypeEncoder:@"_UIButtonMaskAnimationView"
 2017-03-22 12:07:36.050 JKRButtonDemo[2656:133190] Ivar name:_selectionView Ivar TypeEncoder:@"UIView"
 2017-03-22 12:07:36.057 JKRButtonDemo[2656:133190] Ivar name:_lazyTitleViewFont Ivar TypeEncoder:@"UIFont"
 2017-03-22 12:07:36.057 JKRButtonDemo[2656:133190] Ivar name:_contentConstraints Ivar TypeEncoder:@"NSArray"
 2017-03-22 12:07:36.057 JKRButtonDemo[2656:133190] Ivar name:_internalTitlePaddingInsets Ivar TypeEncoder:{UIEdgeInsets="top"d"left"d"bottom"d"right"d}
 */

/**
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"Button is inside: %zd", isInside);
    return isInside;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    NSLog(@"Button hit: %@", view);
    return view;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Button touches began");
//    [self sendActionsForControlEvents:UIControlEventTouchDown];
//    [self setValue:[NSNumber numberWithInteger:UIControlStateHighlighted] forKey:@"lastDrawingControlState"];
//    [self setNeedsDisplay];
    [super touchesBegan:touches withEvent:event];
//    [self.nextResponder touchesBegan:touches withEvent:event];
//    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Button touches ended");
    [super touchesEnded:touches withEvent:event];
//    [self.nextResponder touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Button touches cancelled");
    [super touchesCancelled:touches withEvent:event]; 
//    [self.nextResponder touchesCancelled:touches withEvent:event];
}
 */

/**
// 滑动范围外直接取消
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Button touches moved");
    UITouch *touch = touches.anyObject;
    CGPoint touchPoint = [touch locationInView:self];
    NSLog(@"%@ -- %@", NSStringFromCGRect(self.bounds), NSStringFromCGPoint(touchPoint));
    BOOL cancel = !CGRectContainsPoint(self.bounds, touchPoint);
    if (cancel) {
        [self touchesCancelled:touches withEvent:nil];
    } else {
        [super touchesMoved:touches withEvent:event];
    }
}

*/


// 滑动范围外修改title

/**
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    NSLog(@"beginTrackingWithTouch");
    return [super beginTrackingWithTouch:touch withEvent:event];
}
 
 - (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
 NSLog(@"endTrackingWithTouch");
 [super endTrackingWithTouch:touch withEvent:event];
 }
 
 - (void)cancelTrackingWithEvent:(UIEvent *)event {
 NSLog(@"cancelTrackingWithEvent");
 [super cancelTrackingWithEvent:event];
 }
 */

/// 修改按钮滑动范围
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved");
    UITouch *touch = touches.anyObject;
    BOOL isCurInRect = CGRectContainsPoint(self.bounds, [touch locationInView:self]);
    BOOL isPreInRect = CGRectContainsPoint(self.bounds, [touch previousLocationInView:self]);
    if (!isCurInRect) { // 现在在外面
        if (isPreInRect) { // 之前在里边
            // 从里边滑动到外边
            
        } else {  // 之前在外边
            // 在按钮外拖动
            // 在按钮范围外拖动手动发送UIControlEventTouchDragOutside事件
            [self sendActionsForControlEvents:UIControlEventTouchDragOutside];
        }
    } else { // 现在在里边
        if (!isPreInRect) { // 之前在外边
            // 从外边滑动到里边
            // 从按钮范围外滑动回按钮范围内，需要手动调用touchesBegan方法，让按钮进入高亮状态，并开启UIControl的事件监听
            //[self beginTrackingWithTouch:touch withEvent:event];
            [self touchesBegan:[NSSet setWithObject:touch] withEvent:event];
        } else { // 之前在里边
            // 在按钮内拖动
        }
    }
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded");
    UITouch *touch = touches.anyObject;
    CGPoint point = [touch locationInView:self];
    // 如果松开手指后在按钮范围之外
    if (!CGRectContainsPoint(self.bounds, point)) {
        // 手动触发UIControlEventTouchUpOutside事件
        [self sendActionsForControlEvents:UIControlEventTouchUpOutside];
    }
    [super touchesEnded:touches withEvent:event];
}

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    NSLog(@"continueTrackingWithTouch");
    BOOL isCurInRect = CGRectContainsPoint(self.bounds, [touch locationInView:self]);
    BOOL isPreInRect = CGRectContainsPoint(self.bounds, [touch previousLocationInView:self]);
    if (!isCurInRect) { // 现在在外面
        if (isPreInRect) { // 之前在里边
            // 从里边滑动到外边
            // 从按钮范围内滑动到按钮范围外手动触发UIControlEventTouchDragExit事件并阻断按钮默认事件的执行
            [self sendActionsForControlEvents:UIControlEventTouchDragExit];
            // 阻断按钮默认事件的事件的执行后，需要手动触发touchesCancelled方法，让按钮从高亮状态变成默认状态
            [self touchesCancelled:[NSSet setWithObject:touch] withEvent:event];
            return NO;
        } else {  // 之前在外边
            // 在按钮外拖动
            // 在按钮范围外滑动时，需要手动触发touchesCancelled方法，让按钮从高亮状态变成默认状态，并阻断按钮默认事件的执行
            [self touchesCancelled:[NSSet setWithObject:touch] withEvent:event];
            return NO;
        }
    } else { // 现在在里边
        if (!isPreInRect) { // 之前在外边
            // 从外边滑动到里边
            // 从按钮范围外滑动到按钮范围内，需要手动触发UIControlEventTouchDragEnter事件
            [self sendActionsForControlEvents:UIControlEventTouchDragEnter];
            return [super continueTrackingWithTouch:touch withEvent:event];
        } else { // 之前在里边
            // 在按钮内拖动
            return [super continueTrackingWithTouch:touch withEvent:event];
        }
    }
    return [super continueTrackingWithTouch:touch withEvent:event];
}

@end
