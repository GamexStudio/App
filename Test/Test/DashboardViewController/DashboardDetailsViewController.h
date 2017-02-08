//
//  DashboardDetailsViewController.h
//  Test
//
//  Created by Akruti on 08/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardDetailsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *IBTblDetails;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *IBBtnBack;
- (IBAction)backBtnPressed:(id)sender;

@end
