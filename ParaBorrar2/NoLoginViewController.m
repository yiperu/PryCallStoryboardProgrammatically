//
//  NoLoginViewController.m
//  ParaBorrar2
//
//  Created by Henry AT on 5/16/14.
//  Copyright (c) 2014 Henry AT. All rights reserved.
//

#import "NoLoginViewController.h"
#import "ViewController.h"

@interface NoLoginViewController ()

@end

@implementation NoLoginViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnPasswordAgain:(id)sender {
    
    //principalIdStoryboard
    ViewController *controller =[self.storyboard instantiateViewControllerWithIdentifier:@"principalIdStoryboard"];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:^{
        NSLog(@"No ingreso Correctamente");
    }];
    
    
}
@end
