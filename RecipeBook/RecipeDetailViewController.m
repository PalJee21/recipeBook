//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by ido franindo on 5/16/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "AddRecipeViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController
@synthesize recipeLabel;
@synthesize recipeName;
@synthesize recipe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // Set the Label text with the selected recipe
    recipeLabel.text = [self.recipe valueForKey:@"recipeName"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editRecipe:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"editRecipe"]) {
      
        AddRecipeViewController *destViewController = segue.destinationViewController;
        destViewController.recipe = recipe;
    }

}
@end
