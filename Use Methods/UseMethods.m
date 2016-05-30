//
//  UseMethods.m
//  Card
//
//  Created by Abhi on 20/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import "UseMethods.h"

@implementation UseMethods

static UseMethods *useMethod=nil;

#pragma mark - shared Instance
+(id) sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        useMethod = [[UseMethods alloc] init];
    });
    return useMethod;
}

-(NSUInteger) generateRandomNumberBetween:(int) start to:(int) end{
    return arc4random_uniform(end) + start;
}

-(void)shakeTheView:(UIView *) view theRepeatCount:(int) repeatCount theDuration:(CGFloat) duration floatValues: (CGFloat) f1 : (CGFloat) f2 : (CGFloat) f3 {
    CAKeyframeAnimation * anim = [ CAKeyframeAnimation animationWithKeyPath:@"transform" ] ;
    anim.values = @[ [ NSValue valueWithCATransform3D:CATransform3DMakeTranslation(f1, f2, f3) ], [ NSValue valueWithCATransform3D:CATransform3DMakeTranslation(-1*f1, -1*f2, -1*f3) ] ] ;
    anim.autoreverses = YES ;
    anim.repeatCount = repeatCount ;
    anim.duration = duration ;
    [view.layer addAnimation:anim forKey:nil];
}

-(void)showMessage:(NSString*)message withTitle:(NSString *)title
{
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:message
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        //do something when click button
    }];
    [alert addAction:okAction];
    UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [vc presentViewController:alert animated:YES completion:nil];
}


@end
