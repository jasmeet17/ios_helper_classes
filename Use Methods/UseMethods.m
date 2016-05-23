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



@end