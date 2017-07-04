//
//  ViewController.m
//  TapGestureDemo
//
//  Created by yg on 2017/6/28.
//  Copyright © 2017年 yunge. All rights reserved.
//

#import "ViewController.h"
#import "XinViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer* singleRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapFrom)];
//    singleRecognizer.numberOfTapsRequired = 1; // 单击
    singleRecognizer.delegate = self;
    [self.view addGestureRecognizer:singleRecognizer];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    NSLog(@"gestureDelegate");
    XinViewController * xinVC = [[XinViewController alloc] initWithNibName:@"XinViewController" bundle:[NSBundle mainBundle]];
//    [self.navigationController pushViewController:xinVC animated:YES];
    [self presentViewController:xinVC animated:YES completion:nil];
    return YES;
}

- (void)handleSingleTapFrom{
    NSLog(@"tapAction");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
