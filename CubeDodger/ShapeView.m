//
//  ShapeView.m
//  CubeDodger
//
//  Created by Adrien Canterot on 11/11/2014.
//  Copyright (c) 2014 Adrien Canterot. All rights reserved.
//

#import "ShapeView.h"
#define SHAPE_RECT_W 40
#define SHAPE_RECT_H 40
@implementation ShapeView

- (instancetype)initQuad {
    
    self = [super initWithFrame:CGRectMake(0, 0, SHAPE_RECT_W, SHAPE_RECT_H)];
    return self;
}
@end
