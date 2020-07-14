//
//  ViewController.m
//  手动布局电子视图
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建父亲视图
    SuperView* sView = [[SuperView alloc] init];
    
    
    
    sView.frame = CGRectMake(20, 20, 100, 200);
    sView.backgroundColor = [UIColor blueColor];
   
    [sView createSubViews];
    
    [self.view addSubview:sView];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn1.frame = CGRectMake(240, 520, 80, 40);
    
    [btn1 setTitle:@"缩小" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    
    sView.tag = 101;
    
}

-(void) pressLarge {
    SuperView* sView = (SuperView* )[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300, 400);
    
    [UIView commitAnimations];
    
}

-(void) pressSmall {
    SuperView* sView = (SuperView* )[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [UIView commitAnimations];
}



@end
