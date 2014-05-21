//
//  ViewController.m
//  ParaBorrar2
//
//  Created by Henry AT on 5/16/14.
//  Copyright (c) 2014 Henry AT. All rights reserved.
//

#import "ViewController.h"
#import "NoLoginViewController.h"
#import "SiLoginViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"titulo" message:@"Mensaje" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar", nil];
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alerta show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(id)sender {
    
    NSLog(@"Toco Boton Login");
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"titulo" message:@"Mensaje" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:@"Cancelar", nil];
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alerta show];
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    if (buttonIndex == 0) {
        // Aqui
        NSLog(@"Entro a %@",[alertView textFieldAtIndex:0].text);
        NSLog(@"Entro a %@",[alertView textFieldAtIndex:1].text);
        
        if ([[alertView textFieldAtIndex:0].text isEqualToString:@"Henry"] && [[alertView textFieldAtIndex:1].text isEqualToString:@"123456"]) {
            SiLoginViewController *controller =[self.storyboard instantiateViewControllerWithIdentifier:@"siIdStoryboard"];
            controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            [self presentViewController:controller animated:YES completion:^{
                NSLog(@"ingreso Correctamente");
            }];
            
        } else{
            NoLoginViewController *controller =[self.storyboard instantiateViewControllerWithIdentifier:@"noIdStoryboard"];
            controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            [self presentViewController:controller animated:YES completion:^{
                NSLog(@"No ingreso Correctamente");
            }];
        }
       
        
    } else if (buttonIndex == 1){
        
        NSLog(@"Hizo Click en Cancelar");
    }
        
}



@end
