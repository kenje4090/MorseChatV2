//
//  SecondViewController.h
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/9/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "ViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextView *textFieldValue;
- (IBAction)convertButton:(id)sender;
- (IBAction)instructionForDeafblind:(id)sender;
- (IBAction)clearText:(id)sender;


-(void)hapticDash:(id)sender;
-(void)hapticDot:(id)sender;
-(void)StringToMorse:(NSString *) stringToConvert;
@end

NS_ASSUME_NONNULL_END
