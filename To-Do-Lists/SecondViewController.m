//
//  SecondViewController.m
//  To-Do-Lists
//
//  Created by Mac on 12/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)saveTask {
    NSString *task = self.taskField.text;
    
    if (task.length > 0) {
        NSString *insertQuery = [NSString stringWithFormat:@"INSERT INTO TASK_TABLE(TASK_ID,TASK)VALUES('%@','%@')",task.uppercaseString,task];
        
        NSLog(@"%@",insertQuery);
        
        int result = [[APDatabaseManager sharedManager]executeQuery:insertQuery];
        
        if (result == 1) {
            NSLog(@"Successfully Insert Task");
        }
        else {
            NSLog(@"Unable to insert task in SQlite Database");
        }
        
        NSLog(@"Task Saved : %@",task);
        
        self.taskField.text = @"";
        
    }
    else{
        NSLog(@"Enter Task First To Save");
    }
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    [self saveTask];
    
    return YES;
    
}
- (IBAction)buttonAction:(id)sender {
    
    [self saveTask];
}
@end
