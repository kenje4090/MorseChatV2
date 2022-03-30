//
//  AboutViewController.m
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/12/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)kenje:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Kenje" message:@"Konichiwa!" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (IBAction)bryle:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Bryle" message:@"Arigatou!" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)gian:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Gian" message:@"Sugui!" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)francis:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Francis" message:@"Annyeong!" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)jon:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Jon" message:@"Yamete!" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}
@end
