//
//  ViewController.m
//  HSFEffectDemo
//
//  Created by 黄山锋 on 2018/8/23.
//  Copyright © 2018年 黄山锋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImgView;
@property (weak, nonatomic) IBOutlet UIImageView *girlImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // 设置仙女的运动效果 ===== BEGIN =====
    // 设置在x轴的偏移范围
    UIInterpolatingMotionEffect * fairyEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];// type表示沿水平方向运行效果
    fairyEffX.maximumRelativeValue = @(50);
    fairyEffX.minimumRelativeValue = @(-50);
    // 为view添加运动效果
    [self.girlImgView addMotionEffect:fairyEffX];
    
    UIInterpolatingMotionEffect * fairyEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    fairyEffY.maximumRelativeValue = @(50);
    fairyEffY.minimumRelativeValue = @(-50);
    [self.girlImgView addMotionEffect:fairyEffY];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
