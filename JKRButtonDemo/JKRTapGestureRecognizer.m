//
//  JKRTapGestureRecognizer.m
//  JKRButtonDemo
//
//  Created by tronsis_ios on 17/3/22.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "JKRTapGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation JKRTapGestureRecognizer

- (instancetype)initWithTarget:(id)target action:(SEL)action
{
    self = [super initWithTarget:target action:action];
    self.delegate = self;
    return self;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    NSLog(@"Tap RecognizerShouldBegin");
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Tap touchesBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Tap touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Tap touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Tap touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

@end
