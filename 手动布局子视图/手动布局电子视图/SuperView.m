//
//  SuperView.m
//  手动布局电子视图
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) createSubViews {
    
    //左上
    _view1 = [[UIView alloc] init];
    _view1.frame = CGRectMake(0, 0, 40, 40);
    
    //右上
    _view2 = [[UIView alloc] init];
    _view2.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    
    //左下
    _view3 = [[UIView alloc] init];
    _view3.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    
    //右下
    _view4 = [[UIView alloc] init];
    _view4.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height - 40, 40, 40);
    
    _view1.backgroundColor = [UIColor yellowColor];
    _view2.backgroundColor = [UIColor yellowColor];
    _view3.backgroundColor = [UIColor yellowColor];
    _view4.backgroundColor = [UIColor yellowColor];
    
    [self addSubview:_view1];
    [self addSubview:_view2];
    [self addSubview:_view3];
    [self addSubview:_view4];
    
}

//当需要重新布局时调用
//通过此函数重新设定子视图的位置
//手动调整子视图的位置
-(void) layoutSubviews{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    
    _view1.frame = CGRectMake(0, 0, 40, 40);
    _view2.frame = CGRectMake(self.bounds.size.width - 40, 0, 40, 40);
    _view3.frame = CGRectMake(0, self.bounds.size.height - 40, 40, 40);
    _view4.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height - 40, 40, 40);
    
    [UIView commitAnimations];
}

@end
