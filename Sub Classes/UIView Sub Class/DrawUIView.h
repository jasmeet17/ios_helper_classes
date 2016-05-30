//
//  DrawUIView.h
//  Card
//
//  Created by Abhi on 16/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface DrawUIView : UIView

@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable UIColor *borderColor;

@end
