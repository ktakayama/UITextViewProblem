//
//  UITextViewProblemViewController.m
//  UITextViewProblem
//
//  Created by Kyosuke Takayama on 11/02/10.
//  Copyright 2011 aill. All rights reserved.
//

#import "UITextViewProblemViewController.h"

@implementation UITextViewProblemViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

    [self reloadView];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(90,30,140,44);
    [btn setTitle:@"update TextView" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(reloadView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0,0,10,10)];
    textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
    [textField becomeFirstResponder];
    [textField performSelector:@selector(resignFirstResponder) withObject:nil afterDelay:0.1f];
    [textField release];
}

- (void) reloadView {
   [textView removeFromSuperview];
   [textView release];

   textView = [[UITextView alloc] initWithFrame:CGRectMake(70, 100, 180, 300)];
   textView.font = [UIFont systemFontOfSize:13];
   textView.editable = NO;
   textView.userInteractionEnabled = NO;
   textView.backgroundColor = [UIColor whiteColor];
   [self.view addSubview:textView];
   textView.text = @"サンプルテキスト1行目\nサンプルテキスト2行目\nサンプルテキスト3行目\nサンプルテキスト4行目\nサンプルテキスト5行目\nサンプルテキスト6行目\nサンプルテキスト7行目\nサンプルテキスト8行目\nサンプルテキスト9行目\nサンプルテキスト10行目\nサンプルテキスト11行目\nサンプルテキスト12行目\nサンプルテキスト13行目\nサンプルテキスト14行目\nサンプルテキスト15行目";
}

- (void)dealloc {
    [textView release];
    [super dealloc];
}

@end
