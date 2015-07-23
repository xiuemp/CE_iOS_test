//
//  InstalmentView.m
//  testApp
//
//  Created by 刘庆良 on 15/7/23.
//  Copyright (c) 2015年 creditease. All rights reserved.
//

#import "InstalmentView.h"

@implementation InstalmentView

//- (id)initWithFrame:(CGRect)frame{
//    self = [super initWithFrame:frame];
//    if (self) {
//        //
//    }
//    return self;
//}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
//    UIColor *magentaColor = [UIColor colorWithRed:0.5f green:0.0f blue:0.5f alpha:1.0f];
//    [magentaColor set];
//    
//    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold" size:40.0f];
//    
//    NSString *myString = @"Some String";
//    
//    [myString drawAtPoint:CGPointMake(40, 180) withAttributes:@{
//                                                                NSFontAttributeName:helveticaBold
//                                                                }];
    [[UIColor brownColor] set];
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(currentContext, 5.0f);
    CGContextMoveToPoint(currentContext, 50.0f, 10.0f);
    CGContextAddLineToPoint(currentContext, 100.0f, 200.0f);
    CGContextStrokePath(currentContext);
}
@end
