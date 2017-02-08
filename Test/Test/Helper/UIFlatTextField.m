//
//  UIFlatTextField.m
//  Test
//
//  Created by Akruti on 01/02/17.
//  Copyright © 2017 Nishita_MAC. All rights reserved.
//

#import "UIFlatTextField.h"

@implementation UIFlatTextField

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.seperatorColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
    self.placeHolderColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
    self.clearButtonColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    
    //Set Appearance
    self.textColor = [UIColor whiteColor];
    self.tintColor = [UIColor whiteColor];
    self.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    //Set Placeholder Text Color
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName: self.placeHolderColor}];
    
    //Set Clear button image Color
    UIButton *clearButton = [UIButton appearanceWhenContainedIn:[UITextField class], nil];
    //[clearButton valueForKey:@"_clearButton"];
    [clearButton setImage:[[[clearButton imageView] image] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    [clearButton setTintColor:_clearButtonColor];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, _seperatorColor.CGColor);
    CGContextMoveToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextStrokePath(context);
}


@end
