//
//  SecondViewController.h
//  To-Do-Lists
//
//  Created by Mac on 12/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APDatabaseManager.h"

@interface SecondViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *taskField;

@property (strong, nonatomic) IBOutlet UIButton *buttonSave;

- (IBAction)buttonAction:(id)sender;


@end

