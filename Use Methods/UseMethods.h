//
//  UseMethods.h
//  Card
//
//  Created by Abhi on 20/05/16.
//  Copyright © 2016 Jeev. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@end
