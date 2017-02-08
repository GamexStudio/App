//
//  LoginViewController.m
//  Test
//
//  Created by Akruti on 01/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewTintColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
    
    [self setupViewAppearance];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setupViewAppearance{
    self.IBBtnLogin.layer.borderWidth = 1.0;
    self.IBBtnLogin.layer.cornerRadius = 10.0;
    self.IBBtnLogin.backgroundColor = self.viewTintColor;
    [self.IBBtnLogin setTitleColor:[UIColor colorWithRed:47.0/255.0 green:151.0/255.0 blue:193.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    
    self.IBLblLogin.textColor = self.viewTintColor;
    [self.IBBtnNotaUser setTitleColor:self.viewTintColor forState:UIControlStateNormal];
    self.view.backgroundColor = [UIColor colorWithRed:47.0/255.0 green:151.0/255.0 blue:193.0/255.0 alpha:1.0];
    
}

@end
