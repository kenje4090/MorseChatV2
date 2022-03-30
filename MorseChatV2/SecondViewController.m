//
//  SecondViewController.m
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/9/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textFieldValue.layer.borderWidth = 0.5f;
    self.textFieldValue.layer.borderColor = [[UIColor grayColor] CGColor];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


- (IBAction)convertButton:(id)sender {
    
    NSString *str = [_textFieldValue.text lowercaseString];
    NSLog(@"Input: %@\n\n", str);
    [self StringToMorse:str];
   
}

- (IBAction)instructionForDeafblind:(id)sender {
    [self StringToMorse:@"Hello, this is a morse code application. The dash is the vibration and the dot is the 1 tic."];
}

- (IBAction)clearText:(id)sender {
    _textFieldValue.text=@"";
}

-(void)StringToMorse:(NSString *) stringToConvert{
    NSArray *myArray;
    NSString *iterateStr;
    unichar iterateChar;
    myArray = [stringToConvert componentsSeparatedByString:@" "];
    int time=0;
    for (int i=0; i<myArray.count; i++)
    {
        time+=2;
        NSLog(@"Word[%d]: %@\n",i+1, [myArray objectAtIndex:i]);
        iterateStr=[myArray objectAtIndex:i];
        
        for (NSInteger charIdx=0; charIdx<iterateStr.length; charIdx++){
            // Do something with character at index charIdx, for example:
            time++;
            iterateChar=[iterateStr characterAtIndex:charIdx];
            NSLog(@"%C", iterateChar);
            if(iterateChar == 'a'){ //.-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                time+=3;
            }
            else if(iterateChar == 'b'){ //-...
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                time+=5;
            }
            else if(iterateChar == 'c'){ //-.-.
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                time+=7;
            }
            else if(iterateChar == 'd'){ //-..
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                time+=4;
            }
            else if(iterateChar == 'e'){ //.
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                time+=1;
            }
            else if(iterateChar == 'f'){ //..-.
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                time+=5;
            }
            else if(iterateChar == 'g'){ //--.
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4.2)*.3f];
                time+=5.2;
            }
            else if(iterateChar == 'h'){ //....
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                time+=4;
            }
            else if(iterateChar == 'i'){ //..
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                time+=2;
            }
            else if(iterateChar == 'j'){ //.---
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5.2)*.3f];
                time+=7.2;
            }
            else if(iterateChar == 'k'){ //-.-
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                time+=6;
            }
            else if(iterateChar == 'l'){ //.-..
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                time+=5;
            }
            else if(iterateChar == 'm'){ //--
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                time+=4;
            }
            else if(iterateChar=='n') //-.
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                time+=3;
            }
            else if(iterateChar=='o') //---
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4.2)*.3f];
                time+=6.2;
            }
            else if(iterateChar=='p') //.--.
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5.3)*.3f];
                time+=6.3;
            }
            else if(iterateChar=='q') //--.-
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4.2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5.2)*.3f];
                time+=7.2;
            }
            else if(iterateChar=='r') //.-.
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                time+=4;
            }
            else if(iterateChar=='s') //...
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                time+=3;
            }
            else if(iterateChar=='t') //-
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                time+=2;
            }
            else if(iterateChar=='u') //..-
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                time+=4;
            }
            else if(iterateChar=='v') //...-
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                time+=5;
            }
            else if(iterateChar=='w') //.-- //
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                time+=5;
            }
            else if(iterateChar=='x') //-..-
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                time+=6;
            }
            else if(iterateChar=='y') //-.--
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                time+=7;
            }
            else if(iterateChar=='z') //--..
            {
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4.2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5.2)*.3f];
                time+=6.2;
            }
            
            else if(iterateChar=='0'){ //-----
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+8.4)*.3f];
                time+=10.4;
            }
            else if(iterateChar=='1'){ //.----
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+7.4)*.3f];
                time+=9.4;
            }
            else if(iterateChar=='2'){ // ..---
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4.4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6.4)*.3f];
                time+=8.4;
            }
            else if(iterateChar=='3'){ // ...--
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                time+=7;
            }
            else if(iterateChar=='4'){ // ....-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                time+=6;
            }
            else if(iterateChar=='5'){ //.....
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                time+=5;
            }
            else if(iterateChar=='6'){ //-....
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                time+=6;
            }
            else if(iterateChar=='7'){ //--...
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                time+=7;
            }
            else if(iterateChar=='8'){ //---..
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                time+=7;
            }
            else if(iterateChar=='9'){ // ----.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                time+=8;
            }
            else if(iterateChar=='\"'){ // .----.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+7)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+8)*.3f];
                time+=9;
            }
            else if(iterateChar==':'){ //---...
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                time+=8;
            }
            else if(iterateChar==','){ //--..--
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+7)*.3f];
                time+=9;
            }
            else if(iterateChar=='-'){ //-....-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6)*.3f];
                time+=8;
            }
            else if(iterateChar=='('){ // -.--.-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+8)*.3f];
                time+=10;
            }
            else if(iterateChar=='.'){ // .-.-.-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+7)*.3f];
                time+=9;
            }
            else if(iterateChar=='?'){ // ..--..
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                time+=8;
            }
            else if(iterateChar==';'){ // -.-.-.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+8)*.3f];
                time+=9;
            }
            else if(iterateChar=='/'){ // -..-.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                time+=7;
            }
            else if(iterateChar=='_'){ // ..--.-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+7)*.3f];
                time+=9;
            }
            else if(iterateChar==')'){ // ---..
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                time+=8;
            }
            else if(iterateChar=='='){ // -...-
                printf("\n %d", time);
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+2)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                time+=7;
            }
            else if(iterateChar=='@'){ // .--.-.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+6)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+8)*.3f];
                time+=9;
            }
            else if(iterateChar=='\\'){ // .-..-.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+5)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+7)*.3f];
                time+=8;
            }
            else if(iterateChar=='+'){ // .-.-.
                printf("\n %d", time);
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+1)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+3)*.3f];
                [self performSelector:@selector(hapticDash:) withObject:self afterDelay:(time+4)*.3f];
                [self performSelector:@selector(hapticDot:) withObject:self afterDelay:(time+6)*.3f];
                time+=7;
            }
            
            [self.view endEditing:YES];
            
        }
    }
    
}
-(void)hapticDash:(id)sender{
 
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
}
-(void)hapticDot:(id)sender{
    AudioServicesPlaySystemSound(1520);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
