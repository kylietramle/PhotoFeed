//
//  FavoritesViewController.m
//  PhotoFeed
//
//  Created by Kylie Tram Le on 11/29/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // custom initialization
        self.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"star.png"];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *pigView = [UIButton buttonWithType:UIButtonTypeCustom];
    [pigView setImage:[UIImage imageNamed:@"pig.png"] forState:UIControlStateNormal];
    [pigView setImage:[UIImage imageNamed:@"pig.png"] forState:UIControlStateHighlighted]; // because button is custom
    pigView.frame = CGRectMake(60, 100, 240, 240);
    [self.view addSubview:pigView];
    [pigView addTarget:self action:@selector(showZoomedPicture:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)showZoomedPicture:(UIButton *)sender
{
    UIViewController *pigImageViewController = [[UIViewController alloc] init]; // VC on the fly, not subclass
    pigImageViewController.view.frame = self.view.frame;
    pigImageViewController.title = @"Pig Button"; // title shows on top of the controller
    
    UIImageView *pigView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pig.png"]];
    [pigView setContentMode:UIViewContentModeScaleAspectFit];
    pigView.frame = pigImageViewController.view.frame;
    [pigImageViewController.view addSubview:pigView]; // add image subview into new controller
    
    [self.navigationController pushViewController:pigImageViewController animated:YES]; // push onto stack new image view controller
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
