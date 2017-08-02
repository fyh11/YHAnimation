//
//  ViewController.m
//  YHAnimation
//
//  Created by 樊义红 on 2017/8/1.
//  Copyright © 2017年 樊义红. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_yhView1;
    UIView *_yhView2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(175, 100)];
    
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(150, 125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(175, 225)];
    [path moveToPoint:CGPointMake(100, 150)];
    [path addLineToPoint:CGPointMake(200, 150)];
    
    //create shape layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor colorWithRed:147/255.0 green:231/255.0 blue:182/255.0 alpha:1].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 5;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapRound;
    shapeLayer.path = path.CGPath;
    //add it to our view
    [self.view.layer addSublayer:shapeLayer];
    
    UIView *yhView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    yhView.backgroundColor = [UIColor redColor];
    [self.view addSubview:yhView];
    
    // 贝塞尔曲线
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(116.08, 10.5)];
    [bezierPath addCurveToPoint: CGPointMake(58.95, 36.74) controlPoint1: CGPointMake(84.56, 24.07) controlPoint2: CGPointMake(-36.6, 5.98)];
    [bezierPath addCurveToPoint: CGPointMake(47.5, 80.5) controlPoint1: CGPointMake(154.5, 67.5) controlPoint2: CGPointMake(47.5, 80.5)];
    [bezierPath addCurveToPoint: CGPointMake(98.5, 101.5) controlPoint1: CGPointMake(47.5, 80.5) controlPoint2: CGPointMake(85.75, 96.25)];
    [bezierPath addCurveToPoint: CGPointMake(67.5, 116.5) controlPoint1: CGPointMake(111.25, 106.75) controlPoint2: CGPointMake(75.25, 112.75)];
    [bezierPath addCurveToPoint: CGPointMake(153.74, 108.33) controlPoint1: CGPointMake(59.75, 120.25) controlPoint2: CGPointMake(132.18, 110.37)];
    [bezierPath addCurveToPoint: CGPointMake(130.29, 73.92) controlPoint1: CGPointMake(175.3, 106.29) controlPoint2: CGPointMake(97.07, 84.35)];
    [bezierPath addCurveToPoint: CGPointMake(163.29, 63.68) controlPoint1: CGPointMake(163.5, 63.5) controlPoint2: CGPointMake(155.04, 66.24)];
    [bezierPath addCurveToPoint: CGPointMake(130.5, 25.5) controlPoint1: CGPointMake(171.53, 61.12) controlPoint2: CGPointMake(130.5, 25.5)];
    [bezierPath addCurveToPoint: CGPointMake(109.5, 36.5) controlPoint1: CGPointMake(130.5, 25.5) controlPoint2: CGPointMake(114.75, 33.75)];
    [bezierPath addCurveToPoint: CGPointMake(116.5, 17.5) controlPoint1: CGPointMake(104.25, 39.25) controlPoint2: CGPointMake(114.75, 22.25)];
    [bezierPath addCurveToPoint: CGPointMake(42.5, 57.5) controlPoint1: CGPointMake(118.25, 12.75) controlPoint2: CGPointMake(42.5, 57.5)];
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    //关键帧
    CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyAnimation.duration = 4.0f;
    keyAnimation.path = bezierPath.CGPath;
    keyAnimation.calculationMode = kCAAnimationLinear;
    [yhView.layer addAnimation:keyAnimation forKey:@"movingAnimation"];
}







@end
