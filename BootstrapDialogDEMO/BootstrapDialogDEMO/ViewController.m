//
//  ViewController.m
//  BootstrapDialogDEMO
//
//  Created by Shingo Hano on 13/05/30.
//  Copyright (c) 2013 Shingo Hano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}


-(IBAction)pushButton:(id)sender
{
    UIButton *button=(UIButton*)sender;
	DDSocialDialogTheme dialogTheme = button.tag;
    BButtonType type=button.tag;
	
    blankDialog = [[DDSocialDialog alloc] initWithFrame:CGRectMake(0., 0., 300., 250.) theme:dialogTheme];
    blankDialog.dialogDelegate = self;
    
    //Title Name
    blankDialog.titleLabel.text = NSLocalizedString(@"Title",nil);
    
    UITextField *inputField = [[UITextField alloc] initWithFrame:CGRectMake(85, 130, 165, 25)];
    inputField.borderStyle = UITextBorderStyleRoundedRect;
    inputField.font = [UIFont fontWithName:@"Arial-BoldMT" size:18];
    inputField.textColor = [UIColor grayColor];
    inputField.minimumFontSize = 8;
    inputField.adjustsFontSizeToFitWidth = YES;
    inputField.delegate = self;
    inputField.keyboardType=UIKeyboardTypeDefault;
    [inputField becomeFirstResponder];
    
    //Explanation
    UILabel *expLabel=[[UILabel alloc]initWithFrame:CGRectMake(15, 40, 250, 80)];
    expLabel.text=NSLocalizedString(@"Please write a description of the input box here",nil);
    expLabel.font=[UIFont fontWithName:@"Arial" size:12];
    expLabel.textColor=[UIColor colorWithRed:0.202 green:0.3 blue:0.202 alpha:0.99];
    expLabel.textAlignment=NSTextAlignmentCenter;
    
    //Item Name
    UILabel *itemLabel=[[UILabel alloc]initWithFrame:CGRectMake(15, 130, 60, 25)];
    itemLabel.text=NSLocalizedString(@"Item",nil);
    itemLabel.font=[UIFont fontWithName:@"Arial" size:12];
    itemLabel.textColor=[UIColor colorWithRed:0.202 green:0.3 blue:0.202 alpha:0.99];
    itemLabel.textAlignment=NSTextAlignmentCenter;
    
    //Left Button
    BButton *cancelBtn = [[BButton alloc] initWithFrame:CGRectMake(40,180, 80, 30) type:type];
    [cancelBtn setTitle:@"Cancel" forState:UIControlStateNormal];
    [cancelBtn addTarget:self action:@selector(cancelDialog) forControlEvents:UIControlEventTouchUpInside];
    [blankDialog addSubview:cancelBtn];
    
    //Right Button
    BButton *okBtn = [[BButton alloc] initWithFrame:CGRectMake(160,180, 80, 30) type:type];
    [okBtn setTitle:@"OK" forState:UIControlStateNormal];
    [okBtn addTarget:self action:@selector(okDialog) forControlEvents:UIControlEventTouchUpInside];
    [blankDialog addSubview:okBtn];
    
    [blankDialog addSubview:inputField];
    [blankDialog addSubview:expLabel];
    [blankDialog addSubview:itemLabel];
    [blankDialog addSubview:cancelBtn];
    [blankDialog addSubview:okBtn];
    
    [blankDialog show];
    
    
}

-(void)cancelDialog
{
    [blankDialog cancel];
}

-(void)okDialog
{
    [blankDialog cancel];
}


#pragma mark -
#pragma mark DDSocialDialogDelegate (Optional)
- (void)socialDialogDidCancel:(DDSocialDialog *)socialDialog {
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
