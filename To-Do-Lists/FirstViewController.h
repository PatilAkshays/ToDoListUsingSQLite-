//
//  FirstViewController.h
//  To-Do-Lists
//
//  Created by Mac on 12/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APDatabaseManager.h"

@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray*allTasks;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

