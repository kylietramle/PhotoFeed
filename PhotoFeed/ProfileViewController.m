//
//  ProfileViewController.m
//  PhotoFeed
//
//  Created by Kylie Tram Le on 11/29/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // custom initialization
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"user.png"];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    // add image view
    UIImageView *willyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"willy.jpg"]];
    willyView.frame = CGRectMake(20, 20, 100, 114);
    [self.view addSubview:willyView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
