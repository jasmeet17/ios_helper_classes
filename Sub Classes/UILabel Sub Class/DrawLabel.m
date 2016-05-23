//
//  DrawLabel.m
//  Card
//
//  Created by Abhi on 16/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import "DrawLabel.h"

@implementation DrawLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)setEdgeInsets:(CGRect) newRect{
    UIEdgeInsets insets = {10, 10, 10, 10};
    [super drawTextInRect:UIEdgeInsetsInsetRect(newRect, insets)];
}



@end
