//
//  ViewController.m
//  BrandsOnFire
//
//  Created by Osama Rabie on 9/18/15.
//  Copyright (c) 2015 Osama Rabie. All rights reserved.
//

#import "ViewController.h"
#import "MainCategoryChooser.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSString* genderClicked;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"subCategorySeg"])
    {
        MainCategoryChooser* dst = (MainCategoryChooser*)[segue destinationViewController];
        [dst setGenderChosen:genderClicked];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)womenClicked:(id)sender {

    genderClicked = @"Women";
    [self performSegueWithIdentifier:@"subCategorySeg" sender:self];
}

@end
