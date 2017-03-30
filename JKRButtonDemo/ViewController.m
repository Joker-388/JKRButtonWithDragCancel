//
//  ViewController.m
//  JKRButtonDemo
//
//  Created by tronsis_ios on 17/3/22.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "ViewController.h"
#import "JKRButton.h"
#import <objc/runtime.h>
#import "JKRTapGestureRecognizer.h"
#import "NSObject+JKR_RunTime.h"

@interface ViewController ()

@property (nonatomic, strong) JKRButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JKRButton *button = [JKRButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitle:@"normal" forState:UIControlStateNormal];
    [button setTitle:@"highlighted" forState:UIControlStateHighlighted];
    button.frame = CGRectMake(100, 100, 100, 40);
//    [button setBackgroundColor:[UIColor blueColor]];
    /**
     UIControlEventTouchDown                                         = 1 <<  0,      // on all touch downs
     UIControlEventTouchDownRepeat                                   = 1 <<  1,      // on multiple touchdowns (tap count > 1)
     UIControlEventTouchDragInside                                   = 1 <<  2,
     UIControlEventTouchDragOutside                                  = 1 <<  3,
     UIControlEventTouchDragEnter                                    = 1 <<  4,
     UIControlEventTouchDragExit                                     = 1 <<  5,
     UIControlEventTouchUpInside                                     = 1 <<  6,
     UIControlEventTouchUpOutside                                    = 1 <<  7,
     UIControlEventTouchCancel                                       = 1 <<  8,
     
     UIControlEventValueChanged                                      = 1 << 12,     // sliders, etc.
     UIControlEventPrimaryActionTriggered NS_ENUM_AVAILABLE_IOS(9_0) = 1 << 13,     // semantic action: for buttons, etc.
     
     UIControlEventEditingDidBegin                                   = 1 << 16,     // UITextField
     UIControlEventEditingChanged                                    = 1 << 17,
     UIControlEventEditingDidEnd                                     = 1 << 18,
     UIControlEventEditingDidEndOnExit                               = 1 << 19,     // 'return key' ending editing
     
     UIControlEventAllTouchEvents                                    = 0x00000FFF,  // for touch events
     UIControlEventAllEditingEvents                                  = 0x000F0000,  // for UITextField
     UIControlEventApplicationReserved                               = 0x0F000000,  // range available for application use
     UIControlEventSystemReserved                                    = 0xF0000000,  // range reserved for internal framework use
     UIControlEventAllEvents                                         = 0xFFFFFFFF

     */
    
    [button addTarget:self action:@selector(touchDownAction) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(touchUpInsideAction) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(touchUpOutsideAction) forControlEvents:UIControlEventTouchUpOutside];
    [button addTarget:self action:@selector(touchCancelAction) forControlEvents:UIControlEventTouchCancel];
    [button addTarget:self action:@selector(touchDragInsideAction) forControlEvents:UIControlEventTouchDragInside];
    [button addTarget:self action:@selector(touchDragOutsideAction) forControlEvents:UIControlEventTouchDragOutside];
    [button addTarget:self action:@selector(touchDragEnterAction) forControlEvents:UIControlEventTouchDragEnter];
    [button addTarget:self action:@selector(touchDragExitAction) forControlEvents:UIControlEventTouchDragExit];
    
    [self.view addSubview:button];
    
    NSArray *array = [self.superclass jkr_ivarList];
    NSLog(@"%@", array);

    self.button = button;
}

- (void)touchDownAction {
    NSLog(@"点击");
}

- (void)touchUpInsideAction {
    NSLog(@"按钮内松开手指");
}

- (void)touchUpOutsideAction {
    NSLog(@"按钮外松开手指");
}

- (void)touchCancelAction {
    //NSLog(@"按钮事件被取消");
}

- (void)touchDragInsideAction {
    NSLog(@"按钮内拖动");
}

- (void)touchDragOutsideAction {
    NSLog(@"按钮外拖动");
}

- (void)touchDragEnterAction {
    NSLog(@"拖动到按钮里边");
}

- (void)touchDragExitAction {
    NSLog(@"拖动到按钮外边");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"rootview touchBegan");
}

- (void)otherAction {
    NSLog(@"Tap action");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"rootview touchesEnded");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"rootview touchesMoved");
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"rootview touchesCancelled");
}

@end
