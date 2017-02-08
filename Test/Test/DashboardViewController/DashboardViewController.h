//
//  DashboardViewController.h
//  Test
//
//  Created by Akruti on 06/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCBannerView.h"

@interface DashboardViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UIScrollView *IBScrollView;
@property (strong, nonatomic) IBOutlet UIView *IBView;
@property (strong, nonatomic) IBOutlet UICollectionView *IBCollectionCategory;

@end
