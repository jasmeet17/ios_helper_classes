//
//  DrawButton.m
//  Card
//
//  Created by Abhi on 16/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import "DrawButton.h"

@implementation DrawButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setCornerRadius:(CGFloat) cornerRadius{
    [self.layer setCornerRadius:cornerRadius];
}

@end
