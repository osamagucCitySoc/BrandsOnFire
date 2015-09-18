//
//  MainCategoryChooser.m
//  BrandsOnFire
//
//  Created by Osama Rabie on 9/18/15.
//  Copyright (c) 2015 Osama Rabie. All rights reserved.
//

#import "MainCategoryChooser.h"
#import "CategoryTableViewController.h"

@interface MainCategoryChooser ()

@end

@implementation MainCategoryChooser
{
    NSString* typeClicked;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CategoryTableViewController* dst = (CategoryTableViewController*)[segue destinationViewController];
    [dst setTypeChosen:typeClicked];
    [dst setGenderChosen:_genderChosen];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setTitle:_genderChosen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)vipClicked:(id)sender {
    typeClicked = @"vip";
    [self performSegueWithIdentifier:@"catSeg" sender:self];
}

- (IBAction)normalClicked:(id)sender {
    typeClicked = @"normal";
    [self performSegueWithIdentifier:@"catSeg" sender:self];
}



@end
