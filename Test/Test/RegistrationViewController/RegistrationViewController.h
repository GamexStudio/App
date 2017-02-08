//
//  RegistrationViewController.h
//  Test
//
//  Created by Akruti on 02/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIFlatTextField.h"

@interface RegistrationViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *IBViewContainer;

@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtUname;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtName;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtPassword;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtConfirmPassword;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtEmail;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtMobileNo;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtDOB;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtCity;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtState;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtCountry;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTxtPincode;
@property (strong, nonatomic) IBOutlet UIButton *IBBtnAlreadyMember;
@property (strong, nonatomic) IBOutlet UIButton *IBBtnSignUp;

@property (nonatomic) UIColor *viewTintColor;
@end
