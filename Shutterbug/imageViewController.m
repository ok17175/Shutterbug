//
//  imageViewController.m
//  Shutterbug
//
//  Created by 李深龙 on 13-9-1.
//  Copyright (c) 2013年 李深龙. All rights reserved.
//

#import "imageViewController.h"

@interface imageViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong,nonatomic) UIImageView *imageView;
@end

@implementation imageViewController

- (UIImageView *)imageView
{
    if (!_imageView) _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    return _imageView;
}

- (void)setImageUrl:(NSURL *)imageUrl
{
    _imageUrl = imageUrl;
    [self resetImage];
}

- (void)resetImage
{
    if (self.scrollView) {
        self.scrollView.contentSize = CGSizeZero;
        self.imageView = nil;
        
        //NSData *imageData = [[NSData alloc] initWithContentsOfURL:self.imageUrl];
        //UIImage *image = [[UIImage alloc] initWithData:imageData];
        UIImage *image = [UIImage imageNamed:@"photo_3.jpg"];
        if (image) {
            self.scrollView.contentSize = image.size;
            self.imageView.image = image;
            self.scrollView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
        }
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView addSubview:self.imageView];
    [self resetImage];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
