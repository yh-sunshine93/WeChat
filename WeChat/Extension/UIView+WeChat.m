//
//  UIView+WeChat.m
//  WeChat
//
//  Created by yh_SunShine on 15/11/26.
//  Copyright © 2015年 yhsunshine. All rights reserved.
//

#import "UIView+WeChat.h"

@implementation UIView (WeChat)
-(CGFloat)top{

    return self.frame.origin.y;
}

-(CGFloat)bottom{

    return self.frame.origin.y+self.frame.size.height;
}

-(CGFloat)left{
    
    return self.frame.origin.x;
}

-(CGFloat)right{
    
    return self.frame.origin.x+self.frame.size.width;
}

-(CGFloat)width{

    return self.frame.size.width;
}

-(CGFloat)height{

    return self.frame.size.height;
}

@end
