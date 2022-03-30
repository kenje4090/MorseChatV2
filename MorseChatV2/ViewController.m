//
//  ViewController.m
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/9/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)startBut:(id)sender {
    [self makeSound];
}

- (IBAction)aboutBut:(id)sender {
    [self makeSound];
}

-(void) makeSound{
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"Button_Press-Marianne_Gagnon" ofType:@"wav"];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &soundID);
    
    AudioServicesPlayAlertSound(soundID);
}

@end
