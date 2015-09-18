//
//  CategoryTableViewController.m
//  BrandsOnFire
//
//  Created by Osama Rabie on 9/18/15.
//  Copyright (c) 2015 Osama Rabie. All rights reserved.
//

#import "CategoryTableViewController.h"

@interface CategoryTableViewController ()

@end

@implementation CategoryTableViewController
{
    NSArray* womenVipDataSource;
    NSArray* womenNormalDataSource;
    NSArray* menVipDataSource;
    NSArray* menNormalDataSource;
    NSArray* kidsDataSource;
    int dataSourceKey;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareWomenNormal];
    [self prepareWomenVip];
    
    if([_genderChosen isEqualToString:@"Women"])
    {
        if([_typeChosen isEqualToString:@"vip"])
        {
            dataSourceKey = 1; // women vip
        }else
        {
            dataSourceKey = 2; // women normal
        }
    }else if([_genderChosen isEqualToString:@"Men"])
    {
        if([_typeChosen isEqualToString:@"vip"])
        {
            dataSourceKey = 3; // men vip
        }else
        {
            dataSourceKey = 4; // men normal
        }
    }else
    {
        dataSourceKey = 5; // kids
    }
    
}

-(void)prepareWomenVip
{
    NSDictionary* dict1 = [[NSDictionary alloc]initWithObjects:@[@"Earrings",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/earrings/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict2 = [[NSDictionary alloc]initWithObjects:@[@"Rings",@"http://www.selfridges.com/GB/en/cat/womens/accessories/fine-jewellery/rings/?llc=sn"] forKeys:@[@"name",@"url"]];

    NSDictionary* dict3 = [[NSDictionary alloc]initWithObjects:@[@"Bracelets",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/bracelets/?llc=sn"] forKeys:@[@"name",@"url"]];

    NSDictionary* dict4 = [[NSDictionary alloc]initWithObjects:@[@"Necklaces",@"http://www.selfridges.com/GB/en/cat/womens/accessories/fine-jewellery/necklaces/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* Cat1 = [[NSDictionary alloc]initWithObjects:@[@"Jewellry",@[dict1,dict2,dict3,dict4]] forKeys:@[@"name",@"sources"]];
    
    
    NSDictionary* dict5 = [[NSDictionary alloc]initWithObjects:@[@"Earrings",@"http://www.selfridges.com/GB/en/cat/womens/accessories/fine-jewellery/earrings/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict6 = [[NSDictionary alloc]initWithObjects:@[@"Rings",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/rings/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict7 = [[NSDictionary alloc]initWithObjects:@[@"Bracelets",@"http://www.selfridges.com/GB/en/cat/womens/accessories/fine-jewellery/bracelets/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict8 = [[NSDictionary alloc]initWithObjects:@[@"Necklaces",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/necklaces/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* Cat2 = [[NSDictionary alloc]initWithObjects:@[@"Fine Jewellry",@[dict5,dict6,dict7,dict8]] forKeys:@[@"name",@"sources"]];
    
    
    
    NSDictionary* dict9 = [[NSDictionary alloc]initWithObjects:@[@"Bags",@"http://www.selfridges.com/GB/en/cat/bags/womens/?llc=dn,http://www.farfetch.com/kw/shopping/women/bags-purses-1/items.aspx?ffref=hd_snav#ps=1&pv=60&oby=4,http://www.mytheresa.com/en-ae/bags.html?allproducts=yes"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict10 = [[NSDictionary alloc]initWithObjects:@[@"Beauty",@"http://www.selfridges.com/GB/en/cat/beauty/make-up/?llc=dn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict11 = [[NSDictionary alloc]initWithObjects:@[@"Sunglass",@"http://www.selfridges.com/GB/en/cat/womens/accessories/sunglasses/?llc=dn,http://www.mytheresa.com/en-ae/accessories/sunglasses.html"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict12 = [[NSDictionary alloc]initWithObjects:@[@"Necklaces",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/necklaces/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict13 = [[NSDictionary alloc]initWithObjects:@[@"Watches",@"http://www.selfridges.com/GB/en/cat/womens/accessories/watches/?llc=dn,http://www.theluxurycloset.com/category/women/womens-watches/?search=&filter%5Bcategory_two%5D%5B%5D=103&filter%5Bcondition%5D%5B%5D=3&fiter_result_view=30&result_view_sort=newest&clicking=condition&page=1"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* Cat3 = [[NSDictionary alloc]initWithObjects:@[@"Brands !",@[dict9,dict10,dict11,dict12,dict13]] forKeys:@[@"name",@"sources"]];

    
    womenVipDataSource = [NSArray arrayWithObjects:Cat1,Cat2,Cat3, nil];
    
}


-(void)prepareWomenNormal
{
    NSDictionary* dict1 = [[NSDictionary alloc]initWithObjects:@[@"Earrings",@"http://www.theluxurycloset.com/category/women/fine-jewelry/earrings-fine-jewelry/,https://www.inseller.com/en/women/accessories/earrings"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict2 = [[NSDictionary alloc]initWithObjects:@[@"Rings",@"http://www.theluxurycloset.com/category/women/fine-jewelry/rings-fine-jewelry/?search=&filter%5Bcategory_two%5D%5B%5D=28&filter%5Bcategory_three%5D%5B%5D=66&fiter_result_view=120&result_view_sort=newest&clicking=all&page=1"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict3 = [[NSDictionary alloc]initWithObjects:@[@"Bracelets",@"http://www.theluxurycloset.com/category/women/fine-jewelry/bracelets-fine-jewelry/?search=&filter%5Bcategory_two%5D%5B%5D=28&filter%5Bcategory_three%5D%5B%5D=7&fiter_result_view=120&result_view_sort=newest&clicking=all&page=1,https://www.inseller.com/en/women/accessories/bracelets"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict4 = [[NSDictionary alloc]initWithObjects:@[@"Necklaces",@"http://www.theluxurycloset.com/category/women/fine-jewelry/necklaces-fine-jewelry/?search=&filter%5Bcategory_two%5D%5B%5D=28&filter%5Bcategory_three%5D%5B%5D=55&fiter_result_view=120&result_view_sort=newest&clicking=all&page=1"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* Cat1 = [[NSDictionary alloc]initWithObjects:@[@"Jewellry",@[dict1,dict2,dict3,dict4]] forKeys:@[@"name",@"sources"]];
    
    
    NSDictionary* dict9 = [[NSDictionary alloc]initWithObjects:@[@"Bags",@"http://www.selfridges.com/GB/en/cat/bags/womens/?llc=dn,http://www.farfetch.com/kw/shopping/women/bags-purses-1/items.aspx?ffref=hd_snav#ps=1&pv=60&oby=4,http://www.mytheresa.com/en-ae/bags.html?allproducts=yes"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict11 = [[NSDictionary alloc]initWithObjects:@[@"Sunglass",@"http://www.selfridges.com/GB/en/cat/womens/accessories/sunglasses/?llc=dn,http://www.mytheresa.com/en-ae/accessories/sunglasses.html"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict12 = [[NSDictionary alloc]initWithObjects:@[@"Necklaces",@"http://www.selfridges.com/GB/en/cat/womens/accessories/jewellery/necklaces/?llc=sn"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* dict13 = [[NSDictionary alloc]initWithObjects:@[@"Watches",@"http://www.selfridges.com/GB/en/cat/womens/accessories/watches/?llc=dn,http://www.theluxurycloset.com/category/women/womens-watches/?search=&filter%5Bcategory_two%5D%5B%5D=103&filter%5Bcondition%5D%5B%5D=3&fiter_result_view=30&result_view_sort=newest&clicking=condition&page=1"] forKeys:@[@"name",@"url"]];
    
    NSDictionary* Cat3 = [[NSDictionary alloc]initWithObjects:@[@"Brands !",@[dict9,dict11,dict12,dict13]] forKeys:@[@"name",@"sources"]];
    
    
    womenNormalDataSource = [NSArray arrayWithObjects:Cat1,Cat3, nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    if(dataSourceKey == 1)
    {
        return womenVipDataSource.count;
    }else if(dataSourceKey == 2)
    {
        return womenNormalDataSource.count;
    }else if(dataSourceKey == 3)
    {
        return menVipDataSource.count;
    }else if(dataSourceKey == 4)
    {
        return menNormalDataSource.count;
    }else
    {
        return kidsDataSource.count;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(dataSourceKey == 1)
    {
        return [[[womenVipDataSource objectAtIndex:section] objectForKey:@"sources"] count];
    }else if(dataSourceKey == 2)
    {
        return [[[womenNormalDataSource objectAtIndex:section] objectForKey:@"sources"] count];
    }else if(dataSourceKey == 3)
    {
        return [[[menVipDataSource objectAtIndex:section] objectForKey:@"sources"] count];
    }else if(dataSourceKey == 4)
    {
        return [[[menNormalDataSource objectAtIndex:section] objectForKey:@"sources"] count];
    }else
    {
        return [[[kidsDataSource objectAtIndex:section] objectForKey:@"sources"] count];
    }

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString* cellID = @"catCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    
    NSString* title = @"";
    
    if(dataSourceKey == 1)
    {
        title = [[[[womenVipDataSource objectAtIndex:indexPath.section] objectForKey:@"sources"] objectAtIndex:indexPath.row] objectForKey:@"name"];
        
    }else if(dataSourceKey == 2)
    {
        title =  [[[[womenNormalDataSource objectAtIndex:indexPath.section] objectForKey:@"sources"] objectAtIndex:indexPath.row] objectForKey:@"name"];
    }else if(dataSourceKey == 3)
    {
        title =  [[[[menVipDataSource objectAtIndex:indexPath.section] objectForKey:@"sources"] objectAtIndex:indexPath.row] objectForKey:@"name"];
    }else if(dataSourceKey == 4)
    {
        title =  [[[[menNormalDataSource objectAtIndex:indexPath.section] objectForKey:@"sources"] objectAtIndex:indexPath.row] objectForKey:@"name"];
    }else
    {
        title =  [[[[kidsDataSource objectAtIndex:indexPath.section] objectForKey:@"sources"] objectAtIndex:indexPath.row] objectForKey:@"name"];
    }
    
    
    [[cell textLabel]setText:title];
    
    return cell;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString* title = @"";
    
    if(dataSourceKey == 1)
    {
        title = [[womenVipDataSource objectAtIndex:section] objectForKey:@"name"];
        
    }else if(dataSourceKey == 2)
    {
        title =  [[womenNormalDataSource objectAtIndex:section] objectForKey:@"name"];
    }else if(dataSourceKey == 3)
    {
        title =  [[menVipDataSource objectAtIndex:section] objectForKey:@"name"];
    }else if(dataSourceKey == 4)
    {
        title =  [[menNormalDataSource objectAtIndex:section] objectForKey:@"name"];
    }else
    {
        title =  [[kidsDataSource objectAtIndex:section] objectForKey:@"name"];
    }
    

    return title;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
