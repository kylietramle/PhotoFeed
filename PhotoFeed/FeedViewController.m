//
//  FeedViewController.m
//  PhotoFeed
//
//  Created by Kylie Tram Le on 11/29/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // custom initialization
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"list.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    // add image view
    UIImageView *willyView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"willy.jpg"]];
    [willyView setContentMode:UIViewContentModeScaleAspectFit]; // take up entire screen
    willyView.frame = self.view.frame; // whole frame of view it is in
    [self.view addSubview:willyView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
