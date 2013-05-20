//
//  RecipeViewController.h
//  RecipeBook
//
//  Created by ido franindo on 5/16/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (strong) NSMutableArray *recipesDB;

@end
