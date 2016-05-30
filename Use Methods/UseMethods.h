//
//  UseMethods.h
//  Card
//
//  Created by Abhi on 20/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UseMethods : NSObject

#pragma mark - shared Instance
/**
 * Create a One time Instance of the UseMethods
 @return SingleTon instance of the UseMehtods
 */
+(id) sharedInstance;


#pragma mark - Methods
/**
 * Generate Random number between the given values.
 * More details http://nshipster.com/random/ 
 @param start Point from where it starts[inclusive]
 @param end Point to which it ends[excluseive]
 @return A random number generated between [start,end)
 */
-(NSUInteger) generateRandomNumberBetween:(int) start to:(int) end;

/**
 * Shake the UIView in a particular Direction 
 @param view That needs to be shaked
 @param repeatCount tells the number of time it needs to shake
 @param duration tells the amount of time for which to play the animation
 @param floatvalues f1 , f2 , f3 tells in which direction to shake like f1_amount-> Vertically f2_amount-> Horizontally
 */

-(void)shakeTheView:(UIView *) view theRepeatCount:(int) repeatCount theDuration:(CGFloat) duration floatValues: (CGFloat) f1 : (CGFloat) f2 : (CGFloat) f3 ;

/**
 * Creates a UIAlertController(works with iOS 8.0 and above) and show OK button(only)
 @param message will be displayed as message in the Alert
 @param title will be displayed as title of the Alert
 */
-(void)showMessage:(NSString*)message withTitle:(NSString *)title;

@end
