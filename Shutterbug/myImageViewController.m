//
//  myImageViewController.m
//  Shutterbug
//
//  Created by 李深龙 on 13-9-1.
//  Copyright (c) 2013年 李深龙. All rights reserved.
//

#import "myImageViewController.h"

@interface myImageViewController ()

@end

@implementation myImageViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.imageUrl = [[NSURL alloc] initWithString:@"http://images.apple.com/v/iphone/gallery/a/images/photo_3.jpg"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
