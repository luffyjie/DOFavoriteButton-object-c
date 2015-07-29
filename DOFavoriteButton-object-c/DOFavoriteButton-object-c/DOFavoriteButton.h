//
//  DOFavoriteButton.h
//  DOFavoriteButton-object-c
//
//  Created by jianyi on 15/7/27.
//  Copyright (c) 2015年 jianyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOFavoriteButton : UIButton

@property (nonatomic, strong) UIColor                   * imageColorOn;
@property (nonatomic, strong) UIColor                   * imageColorOff;
@property (nonatomic, strong) UIColor                   * circleColor;
@property (nonatomic, strong) UIColor                   * lineColor;
@property (nonatomic, assign) double                    duration;
@property(nonatomic,getter=isSelected) BOOL             selected;

- (id)initWithFrame:(CGRect)frame image:(UIImage *)image;

- (void)select;

- (void)deselect;

@end
