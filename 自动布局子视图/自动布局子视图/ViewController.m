//
//  ViewController.m
//  自动布局子视图
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _superView = [[UIView alloc] init];
    _superView.frame = CGRectMake(20, 20, 180, 280);
    _superView.backgroundColor = [UIColor blackColor];
    
    _label01 = [[UILabel alloc] init];
    _label01.frame = CGRectMake(0, 0, 40, 40);
    _label01.text = @"1";
    _label01.backgroundColor = [UIColor whiteColor];
    
    _label02 = [[UILabel alloc] init];
    _label02.frame = CGRectMake(180 - 40, 0, 40, 40);
    _label02.text = @"2";
    _label02.backgroundColor = [UIColor whiteColor];
    
    _label03 = [[UILabel alloc] init];
    _label03.frame = CGRectMake(180 - 40, 280 - 40, 40, 40);
    _label03.text = @"3";
    _label03.backgroundColor = [UIColor whiteColor];
    
    _label04 = [[UILabel alloc] init];
    _label04.frame = CGRectMake(0, 280 - 40, 40, 40);
    _label04.text = @"4";
    _label04.backgroundColor = [UIColor whiteColor];
    
    [_superView addSubview:_label01];
    [_superView addSubview:_label02];
    [_superView addSubview:_label03];
    [_superView addSubview:_label04];
    
    [self.view addSubview:_superView];
    
    _viewCenter = [[UIView alloc] init];
    _viewCenter.frame = CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _viewCenter.center = CGPointMake(180/2, 280/2);
    _viewCenter.backgroundColor = [UIColor yellowColor];
    
    [_superView addSubview:_viewCenter];
    
    _label02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _label03.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    _label04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    static BOOL isLarge = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    if (isLarge == NO ) {
        _superView.frame = CGRectMake(10, 10, 300, 480);
    }
    else{
        _superView.frame = CGRectMake(20, 20, 180, 280);
    }
    

    [UIView commitAnimations];
    
    isLarge = !isLarge;
}

@end
