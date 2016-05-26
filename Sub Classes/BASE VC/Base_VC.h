//
//  Base_VC.h
//
//  Created by Abhi on 2/01/16.
//  Copyright (c) 2015 Jasmeet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Base_VC : UIViewController

#pragma mark - Properties
// Custom Navigation Bar
@property UIView *naviagtionBar_Base;



#pragma mark - Show Buttons
// Method to Select to Show specific Buttons
-(void) showleftMenuButton:(BOOL) leftMenu
              theRightMenu:(BOOL) rightMenu
         theLeftBackButton:(BOOL) leftBackButton
            theShareButton:(BOOL) shareButton;

#pragma mark - Methods to be called; TITLE
//change the Title on the Navigation Controller
-(void) setNavigationTitle:(NSString *) title;

#pragma mark -  Actions Created
// Method for the Left Menu Button
-(void) action_LeftMenu:(UIButton *) sender;

// Method for the back Button; on left
-(void) action_BackButton:(UIButton *) sender;


@end
