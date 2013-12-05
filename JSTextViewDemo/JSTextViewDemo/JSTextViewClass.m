//
//  JSTextViewClass.m
//  JSTextViewDemo
//
//  Created by Jack Solomon on 4/12/2013.
//  Copyright (c) 2013 99cents. All rights reserved.
//

#import "JSTextViewClass.h"

@implementation JSTextViewClass
-(void)awakeFromNib{
    self.layer.borderWidth = 0.7;
    self.layer.borderColor = [[UIColor colorWithRed:205/255.0f green:205/255.0f blue:205/255.0f alpha:1.0f] CGColor];
    self.layer.cornerRadius = 6.5;
    self.delegate = self;
    self.returnKeyType = UIReturnKeyDone;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.delegate = self;
    }
    return self;
}
-(void)textViewDidBeginEditing:(UITextView *)textView{
    //Clear text view upon beginning of editing
    //textView.text = @"";
    //Set the text colour to black, rather than the dark grey placeholder text
    //textView.textColor = [UIColor blackColor];
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}



@end
