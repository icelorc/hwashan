//
//  fontechVoguesViewController.h
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "fontechListViewViewController.h"
#import "fontechServiceDetailViewController.h"

@interface fontechVoguesViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSArray *itemArray;
@property (nonatomic, retain) NSArray *detailArray;

@end
