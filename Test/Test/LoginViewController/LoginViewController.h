//
//  LoginViewController.h
//  Test
//
//  Created by Akruti on 01/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIFlatTextField.h"

@interface LoginViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *IBLblLogin;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTextEmail;
@property (strong, nonatomic) IBOutlet UIFlatTextField *IBTextPassword;
@property (strong, nonatomic) IBOutlet UIButton *IBBtnLogin;
@property (strong, nonatomic) IBOutlet UIButton *IBBtnNotaUser;

@property (nonatomic) UIColor *viewTintColor;
@end
