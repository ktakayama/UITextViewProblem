//
//  UITextViewProblemAppDelegate.h
//  UITextViewProblem
//
//  Created by Kyosuke Takayama on 11/02/10.
//  Copyright 2011 aill. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UITextViewProblemViewController;

@interface UITextViewProblemAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITextViewProblemViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITextViewProblemViewController *viewController;

@end

