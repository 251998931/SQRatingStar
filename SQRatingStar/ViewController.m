//
//  ViewController.m
//  SQRatingStar
//
//  Created by shu on 16/6/6.
//  Copyright © 2016年 shu. All rights reserved.
//

#import "ViewController.h"
#import "SQRatingStar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSInteger heightLighCount = 5;
    SQRatingStar *starView = [[SQRatingStar alloc] initWithFrame:CGRectMake(0, 140, 220, 24)starCount:5];
//    starView.enabled = NO; //关闭交互
    [starView setRating:heightLighCount];//设置高亮个数
    [self.view addSubview:starView];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 320, 20)];
    label.text = [NSString stringWithFormat:@"%d",heightLighCount];
    [self.view addSubview:label];
    
    //using block
    [starView setRatingChangedBlock:^(NSUInteger rating) {
        dispatch_async(dispatch_get_main_queue(), ^{
            label.text = [NSString stringWithFormat:@"%d",rating];
        });
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
