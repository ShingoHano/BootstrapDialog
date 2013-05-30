//
//  ViewController.h
//  BootstrapDialogDEMO
//
//  Created by Shingo Hano on 13/05/30.
//  Copyright (c) 2013 Shingo Hano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDSocialDialog.h"

@interface ViewController : UIViewController<DDSocialDialogDelegate,UITextFieldDelegate>
{
    DDSocialDialog *blankDialog;
}

-(IBAction)pushButton:(id)sender;

@end
