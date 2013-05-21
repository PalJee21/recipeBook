//
//  AddRecipeViewController.m
//  RecipeBook
//
//  Created by ido franindo on 5/20/13.
//  Copyright (c) 2013 suitmedia. All rights reserved.
//

#import "AddRecipeViewController.h"
#import "RecipeDetailViewController.h"

@interface AddRecipeViewController ()

@end

@implementation AddRecipeViewController
@synthesize recipe;

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
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
    //if recipe not nil, fill the object at label
    if(recipe){
        self.recipeNameTextField.text = [recipe valueForKey:@"recipeName"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
   
    if(recipe){
        //update existing object
        [recipe setValue:self.recipeNameTextField.text forKey:@"recipeName"];
        
    }else{
        // Create a new managed object
        NSManagedObject *newRecipe = [NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:context];
        [newRecipe setValue:self.recipeNameTextField.text forKey:@"recipeName"];
    }
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    else{
        NSLog(@"Save!");
              
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"editSuccess"])
    {
        
//        NSLog(@"segue in");
//        RecipeDetailViewController *destVC = [segue destinationViewController];
//        destVC.recipe = self.recipe;
//        destVC.recipeName = [self.recipe valueForKey:@"recipeName"];
    }
}

@end
