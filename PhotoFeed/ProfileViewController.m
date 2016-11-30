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
    
    //scroll view
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.scrollView.contentSize = CGSizeMake(320, 480); // 480 = 440 + 40 from memberSinceLabel
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth); // resize in landscape too
    [self.view addSubview:self.scrollView];
    
    // image view
    UIImageView *willyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"willy.jpg"]];
    willyView.frame = CGRectMake(20, 20, 110, 114);
    [self.scrollView addSubview:willyView];
    
    // name label
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    nameLabel.text = @"Name: Willy";
    [self.scrollView addSubview:nameLabel];
    
    //city label
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    cityLabel.text = @"From: Korea";
    [self.scrollView addSubview:cityLabel];
    
    // biography
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Willy is the king of all Williers. Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray! Hooray!";
    [self.scrollView addSubview:biography];
    
    // member since
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
    memberSinceLabel.text = @"Member since: September 1989";
    [self.scrollView addSubview:memberSinceLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
