//
//  ViewController.h
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/9/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
@interface ViewController : UIViewController
- (IBAction)startBut:(id)sender;
- (IBAction)aboutBut:(id)sender;

-(void) makeSound;
@end

