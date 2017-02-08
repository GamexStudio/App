//
//  DashboardViewController.m
//  Test
//
//  Created by Akruti on 06/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import "DashboardViewController.h"

@interface DashboardViewController ()<LCBannerViewDelegate>

@property (nonatomic, weak) LCBannerView *bannerView1;
@property (nonatomic) NSMutableArray *arrCategories;
@property (nonatomic) UIEdgeInsets sectionInsets;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.sectionInsets = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0);
    self.arrCategories = [NSMutableArray arrayWithObjects:@"Plumber", @"Carpenter", @"Party Planner", @"Lawyer", @"Dietician", @"Electrician", @"Fitness Trainer", @"Laundry", @"Wedding Planner", @"Wedding Decorators", @"Wedding Photoshoot", @"Salon at Home", nil];
    
    /******************** local ********************/
    [_IBView addSubview:({
        
        LCBannerView *bannerView = [[LCBannerView alloc] initWithFrame:CGRectMake(0, 20.0f, [UIScreen mainScreen].bounds.size.width, 200.0f)
                                                              delegate:nil
                                                             imageName:@"banner"
                                                                 count:2
                                                          timeInterval:3.0f
                                         currentPageIndicatorTintColor:[UIColor orangeColor]
                                                pageIndicatorTintColor:[UIColor whiteColor]];
        bannerView.pageDistance = 20.0f;
        
        bannerView.didClickedImageIndexBlock = ^(LCBannerView *bannerView, NSInteger index) {
            
            NSLog(@"Block: Clicked image in %p at index: %d", bannerView, (int)index);
        };
        
        bannerView.didScrollToIndexBlock = ^(LCBannerView *bannerView, NSInteger index) {
            
            NSLog(@"Block: Scrolled in %p to index: %d", bannerView, (int)index);
        };
        
        //        bannerView.notScrolling = YES;
        self.bannerView1 = bannerView;
    })];
    
    
    [self performSelector:@selector(changed) withObject:nil afterDelay:3.0f];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changed {
    self.bannerView1.count = 3;
}

#pragma mark: - UICollection View Delegate Methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.arrCategories count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    UILabel *categoryName;
    
    categoryName = (UILabel *)[cell viewWithTag:1];
    categoryName.text = [self.arrCategories objectAtIndex:indexPath.row];
    
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

//#pragma mark: - UICollectionView Flow layout Delegate Methods

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return _sectionInsets;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return self.sectionInsets.left;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    float paddingSpace = self.sectionInsets.left * 4.0;
    float availableWidth = self.view.frame.size.width - paddingSpace;
    float widthPerItem = availableWidth / 3;
    
    return CGSizeMake(widthPerItem, widthPerItem);
}

@end
