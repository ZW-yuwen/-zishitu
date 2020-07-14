//
//  SuperView.h
//  手动布局电子视图
//
//  Created by 仲雯 on 2020/7/14.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperView : UIView
{
    UIView* _view1;
    UIView* _view2;
    UIView* _view3;
    UIView* _view4;
    
}

-(void) createSubViews;
@end

NS_ASSUME_NONNULL_END
