//
//  Base_VC.m
//
//  Created by Abhi on 2/01/16.
//  Copyright (c) 2015 Jasmeet. All rights reserved.
//

#import "Base_VC.h"
#import "Macros.h"

@interface Base_VC (){
}

@property UILabel *lbl_Title;       // title for Controller
@property UIButton *btn_LeftMenu;   // left Menu Button
@property UIButton *btn_RightMenu;  // right Menu Button
@property UIButton *btn_BackButton; // back Button on Left
@property UIButton *btn_Share;      // Share Button on Right

@end


@implementation Base_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden=YES;
    
    // INITIALIZATION OF THE CODE
    
    // Custom Navigation Bar
    self.naviagtionBar_Base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_SIZE.width, 64)] ;
    
    // BackGround Image in Custom Navigation Bar
    UIImageView *navBack = [[UIImageView alloc] initWithFrame:self.naviagtionBar_Base.frame];
    navBack.image = [UIImage imageNamed:@"top-background"];
 
    //  TITLE on Custom Navigation Bar
    self.lbl_Title = [[UILabel alloc] initWithFrame:CGRectMake(50, 26, SCREEN_SIZE.width-100, 30)];
    self.lbl_Title.textAlignment = NSTextAlignmentCenter;
    [self.lbl_Title setTextColor:[UIColor whiteColor]];
    [self.lbl_Title setFont:[UIFont fontWithName:@"Arial" size:20.0]];
    
    // LEFT Menu Button
    self.btn_LeftMenu = [[UIButton alloc] initWithFrame:CGRectMake(4, 20, 40, 40)];
    [self.btn_LeftMenu setImage:[UIImage imageNamed:@"menu_1"] forState:UIControlStateNormal];
    [self.btn_LeftMenu addTarget:self action:@selector(action_LeftMenu:) forControlEvents:UIControlEventTouchUpInside];

    // RIGHT Menu Button
    self.btn_RightMenu = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_SIZE.width-44, 20, 40, 40)];
    [self.btn_RightMenu setImage:[UIImage imageNamed:@"menu-right"] forState:UIControlStateNormal];
    [self.btn_RightMenu addTarget:self action:@selector(action_RightMenu:) forControlEvents:UIControlEventTouchUpInside];
    
    //Back Button on the Left
    self.btn_BackButton = [[UIButton alloc] initWithFrame:CGRectMake(4, 20, 40, 40)];
    [self.btn_BackButton setImage:[UIImage imageNamed:@"back-arrow"] forState:UIControlStateNormal];
    [self.btn_BackButton addTarget:self action:@selector(action_BackButton:) forControlEvents:UIControlEventTouchUpInside];

//    Share Button on the Right
    self.btn_Share = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_SIZE.width-44, 20, 40, 40)];
    [self.btn_Share setImage:[UIImage imageNamed:@"Share_Button"] forState:UIControlStateNormal];
//    [self.btn_LeftMenu addTarget:self action:@selector(action_ShareButton:) forControlEvents:UIControlEventTouchUpInside];

    
    // adding SubViews on CUSTOM BAR
    [self.naviagtionBar_Base addSubview:navBack];
    [self.naviagtionBar_Base addSubview:self.lbl_Title];
    [self.naviagtionBar_Base addSubview:self.btn_LeftMenu];
    [self.naviagtionBar_Base addSubview:self.btn_RightMenu];
    [self.naviagtionBar_Base addSubview:self.btn_Share];
    [self.naviagtionBar_Base addSubview:self.btn_BackButton];
    
    [self.view addSubview:self.naviagtionBar_Base];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Changing the Stauts Badr Color to White
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

#pragma mark - Show Buttons
// Method to Select to Show specific Buttons
-(void) showleftMenuButton:(BOOL) leftMenu
              theRightMenu:(BOOL) rightMenu
         theLeftBackButton:(BOOL) leftBackButton
            theShareButton:(BOOL) shareButton{
    
    self.btn_LeftMenu.hidden  =leftMenu;
    self.btn_RightMenu.hidden =rightMenu;
    self.btn_BackButton.hidden=leftBackButton;
    self.btn_Share.hidden= shareButton;
}

#pragma mark - Methods to be called; TITLE
//change the Title on the Navigation Controller
-(void) setNavigationTitle:(NSString *) title{
    self.lbl_Title.text=title;
}


#pragma mark -  Actions Created
// Method for the Left Menu Button
-(void) action_LeftMenu:(UIButton *) sender{
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.30;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];

   
}
// Method for the back Button; on left
-(void) action_BackButton:(UIButton *) sender{
    [self.navigationController popViewControllerAnimated:YES];
}

// RIGHT MENU BUTTON on the Right
-(void) action_RightMenu:(UIButton *) sender{
}

@end
