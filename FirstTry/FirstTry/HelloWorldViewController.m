//
//  HelloWorldViewController.m
//  FirstTry
//
//  Created by XWY on 13-10-22.
//  Copyright (c) 2013年 Azuki. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *labal;

@end

@implementation HelloWorldViewController
- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameStr = self.userName;
    if ([nameStr length] == 0 ){
        nameStr = @"空字符串";
    }
    NSString *sentence = [[NSString alloc] initWithFormat:@"乃好，%@!", nameStr];
    self.labal.text = sentence;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
