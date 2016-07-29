//
//  SQRatingStar.h
//  SQRatingStar
//
//  Created by shu on 16/6/6.
//  Copyright © 2016年 shu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQRatingStar : UIControl

@property (nonatomic) NSUInteger rating;
@property (nonatomic,copy) void (^ratingChangedBlock)(NSUInteger rating);
-(id)initWithFrame:(CGRect)frame;
-(id)initWithFrame:(CGRect)frame starCount:(NSUInteger)count;

@end
