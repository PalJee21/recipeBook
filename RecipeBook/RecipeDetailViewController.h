//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by ido franindo on 5/16/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;
@property (strong) NSManagedObject *recipe;

- (IBAction)editRecipe:(id)sender;



@end
