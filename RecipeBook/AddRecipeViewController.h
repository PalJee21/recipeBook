//
//  AddRecipeViewController.h
//  RecipeBook
//
//  Created by ido franindo on 5/20/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddRecipeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *recipeNameTextField;
@property (strong) NSManagedObject *recipe;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
