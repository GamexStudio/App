//
//  DashboardDetailsViewController.m
//  Test
//
//  Created by Akruti on 08/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import "DashboardDetailsViewController.h"

@interface DashboardDetailsViewController (){
    NSMutableArray *arrFreelancerNames;
    NSMutableArray *arrFreelancerDetails;
    NSMutableArray *arrFreelancerImages;
}

@end

@implementation DashboardDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrFreelancerNames = [[NSMutableArray alloc] initWithObjects:@"ABC name", nil];
    arrFreelancerDetails = [[NSMutableArray alloc] initWithObjects:@"I am best in this", nil];
    arrFreelancerImages = [[NSMutableArray alloc] initWithObjects:@"profile.png", nil];
    
    self.IBTblDetails.tableFooterView = [UIView new];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark : - UITableView delegate Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailsCell" forIndexPath:indexPath];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"DetailsCell"];
    }
    
    cell.textLabel.text = [arrFreelancerNames objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [arrFreelancerDetails objectAtIndex:indexPath.row];
    cell.detailTextLabel.numberOfLines = 0;
    
    cell.imageView.image = [UIImage imageNamed:[arrFreelancerImages objectAtIndex:indexPath.row]];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arrFreelancerNames count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark: - Button Actions
- (IBAction)backBtnPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
