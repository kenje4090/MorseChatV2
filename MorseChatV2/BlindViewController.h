//
//  BlindViewController.h
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/13/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
NS_ASSUME_NONNULL_BEGIN

@interface BlindViewController : UIViewController

@property (strong,nonatomic) NSString *stringToChar;
@property (strong, nonatomic) NSString *convertedChar;
@property (strong, nonatomic) NSString *convertedWord;

- (IBAction)clearText:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *textViewValue;
- (IBAction)newCharWord:(id)sender;
- (IBAction)instructionUse:(id)sender;

- (IBAction)dash:(id)sender;
-(void) addTextToTextView:(NSString *) stringToAdd;
-(void) convertStringToChar;
-(void)StringToMorse:(NSString *) stringToConvert;
-(void)hapticDash:(id)sender;
-(void)hapticDot:(id)sender;
- (void)longPress:(UILongPressGestureRecognizer*)gesture;
- (void)tapPress:(UITapGestureRecognizer*)gesture;
- (void)wordlongPress:(UILongPressGestureRecognizer*)gesture;
- (void)wordtapPress:(UITapGestureRecognizer*)gesture;
@end

NS_ASSUME_NONNULL_END
