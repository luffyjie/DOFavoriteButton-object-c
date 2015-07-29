//
//  ViewController.m
//  DOFavoriteButton-object-c
//
//  Created by jianyi on 15/7/27.
//  Copyright (c) 2015年 jianyi. All rights reserved.
//

#import "ViewController.h"
#import "DOFavoriteButton.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
// 颜色(RGB)
#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float width = (self.view.frame.size.width - 44) / 4;
    float x = width / 2;
    float y = self.view.frame.size.height / 2 - 22;
    
    // star button
    DOFavoriteButton *starButton = [[DOFavoriteButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"star"]];
    [starButton addTarget:self action:@selector(tappedButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:starButton];
    x += width;
    
    // heart button
    DOFavoriteButton *heartButton = [[DOFavoriteButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"heart"]];
    heartButton.imageColorOn = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0];
    heartButton.circleColor = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0];
    heartButton.lineColor = [UIColor colorWithRed:226/255.0f green:96/255.0f blue:96/255.0f alpha:1.0];
    [heartButton addTarget:self action:@selector(tappedButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:heartButton];
    x += width;
    
    // heart button
    DOFavoriteButton *likeButton = [[DOFavoriteButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"like"]];
    likeButton.imageColorOn = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
    likeButton.circleColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
    likeButton.lineColor = [UIColor colorWithRed:41/255.0f green:128/255.0f blue:185/255.0f alpha:1.0];
    likeButton.duration = 2;
    [likeButton addTarget:self action:@selector(tappedButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:likeButton];
    x += width;
    
    // heart button
    DOFavoriteButton *smileButton = [[DOFavoriteButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"smile"]];
    smileButton.imageColorOn = [UIColor colorWithRed:45/255.0f green:204/255.0f blue:112/255.0f alpha:1.0];
    smileButton.circleColor = [UIColor colorWithRed:45/255.0f green:204/255.0f blue:112/255.0f alpha:1.0];
    smileButton.lineColor = [UIColor colorWithRed:45/255.0f green:195/255.0f blue:106/255.0f alpha:1.0];
    smileButton.duration = 5;
    [smileButton addTarget:self action:@selector(tappedButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:smileButton];
    x += width;
    
    UIImageView *starImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 44, 44)];
    starImage.image = [UIImage imageNamed:@"star"];
    [self.view addSubview:starImage];
    
    starButton.selected = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tappedButton:(id)sender {
    DOFavoriteButton *button = (DOFavoriteButton *)sender;
    if (button.selected) {
        [button deselect];
    } else {
        [button select];
    }
}

@end
