//
//  BlindViewController.m
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/13/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import "BlindViewController.h"

@interface BlindViewController ()

@end

@implementation BlindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _stringToChar=@"";
    self.textViewValue.layer.borderWidth = 0.5f;
    self.textViewValue.layer.borderColor = [[UIColor grayColor] CGColor];


}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)longPress:(UILongPressGestureRecognizer*)gesture {
    if ( gesture.state == UIGestureRecognizerStateEnded ) {
        NSLog(@"Long Press");
        self.stringToChar = [self.stringToChar stringByAppendingString:@"-"];
        printf("\nDASH");
        [self hapticDash:self];
    }
}

- (void)tapPress:(UITapGestureRecognizer*)gesture {
    if ( gesture.state == UIGestureRecognizerStateEnded ) {
        self.stringToChar = [self.stringToChar stringByAppendingString:@"."];
        printf("\nDOT");
        [self hapticDot:self];
    }
}

- (void)wordlongPress:(UILongPressGestureRecognizer*)gesture {
    if ( gesture.state == UIGestureRecognizerStateEnded ) {
        _stringToChar=@"";
        [self addTextToTextView:@" "];
    }
}

- (void)wordtapPress:(UITapGestureRecognizer*)gesture {
    if ( gesture.state == UIGestureRecognizerStateEnded ) {
        [self convertStringToChar];
        _stringToChar=@"";
    }
}

-(void) addTextToTextView:(NSString *) stringToAdd{
    
    _textViewValue.text = [_textViewValue.text stringByAppendingString:stringToAdd];
}

- (IBAction)newCharWord:(id)sender {
    UILongPressGestureRecognizer *wordlongPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(wordlongPress:)];
    wordlongPress.cancelsTouchesInView = NO;
    [sender addGestureRecognizer:wordlongPress];
    
    UITapGestureRecognizer *wordtapPress = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(wordtapPress:)];
    wordtapPress.cancelsTouchesInView = NO;
    [sender addGestureRecognizer:wordtapPress];
}

- (IBAction)instructionUse:(id)sender {
    [self StringToMorse:@"1 tap for . and long press for - on the lower right corner for morse code. 1 tap for new letter and long press for new word on lower left corner."];
}

- (IBAction)dash:(id)sender {
      UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    longPress.cancelsTouchesInView = NO;
    [sender addGestureRecognizer:longPress];
    
    UITapGestureRecognizer *tapPress = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPress:)];
    tapPress.cancelsTouchesInView = NO;
    [sender addGestureRecognizer:tapPress];
   
}

-(void) convertStringToChar{
    NSLog(@"stringtochar=%@", _stringToChar);
    if([_stringToChar isEqualToString:@".-"]){
        _convertedChar=@"a";
    }
    else if([_stringToChar isEqualToString:@"-..."]){
        _convertedChar=@"b";
    }
    else if([_stringToChar isEqualToString:@"-.-."]){
        _convertedChar=@"c";
    }
    else if([_stringToChar isEqualToString:@"-.."]){
        _convertedChar=@"d";
    }
    else if([_stringToChar isEqualToString:@"."]){
        _convertedChar=@"e";
    }
    else if([_stringToChar isEqualToString:@"..-."]){
        _convertedChar=@"f";
    }
    else if([_stringToChar isEqualToString:@"--."]){
        _convertedChar=@"g";
    }
    else if([_stringToChar isEqualToString:@"...."]){
        _convertedChar=@"h";
    }
    else if([_stringToChar isEqualToString:@"--"]){
        _convertedChar=@"i";
    }
    else if([_stringToChar isEqualToString:@".---"]){
        _convertedChar=@"j";
    }
    else if([_stringToChar isEqualToString:@"-.-"]){
        _convertedChar=@"k";
    }
    else if([_stringToChar isEqualToString:@".-.."]){
        _convertedChar=@"l";
    }
    else if([_stringToChar isEqualToString:@"--"]){
        _convertedChar=@"m";
    }
    else if([_stringToChar isEqualToString:@"-."]){
        _convertedChar=@"n";
    }
    else if([_stringToChar isEqualToString:@"---"]){
        _convertedChar=@"o";
    }
    else if([_stringToChar isEqualToString:@".--."]){
        _convertedChar=@"p";
    }
    else if([_stringToChar isEqualToString:@"--.-"]){
        _convertedChar=@"q";
    }
    else if([_stringToChar isEqualToString:@".-."]){
        _convertedChar=@"r";
    }
    else if([_stringToChar isEqualToString:@"..."]){
        _convertedChar=@"s";
    }
    else if([_stringToChar isEqualToString:@"-"]){
        _convertedChar=@"t";
    }
    else if([_stringToChar isEqualToString:@"..-"]){
        _convertedChar=@"u";
    }
    else if([_stringToChar isEqualToString:@"...-"]){
        _convertedChar=@"v";
    }
    else if([_stringToChar isEqualToString:@".--"]){
        _convertedChar=@"w";
    }
    else if([_stringToChar isEqualToString:@"-..-"]){
        _convertedChar=@"x";
    }
    else if([_stringToChar isEqualToString:@"-.--"]){
        _convertedChar=@"y";
    }
    else if([_stringToChar isEqualToString:@"--.."]){
        _convertedChar=@"z";
    }
    else if([_stringToChar isEqualToString:@"-----"]){
        _convertedChar=@"0";
    }
    else if([_stringToChar isEqualToString:@".----"]){
        _convertedChar=@"1";
    }
    else if([_stringToChar isEqualToString:@"..---"]){
        _convertedChar=@"2";
    }
    else if([_stringToChar isEqualToString:@"...--"]){
        _convertedChar=@"3";
    }
    else if([_stringToChar isEqualToString:@"....-"]){
        _convertedChar=@"4";
    }
    else if([_stringToChar isEqualToString:@"....."]){
        _convertedChar=@"5";
    }
    else if([_stringToChar isEqualToString:@"-...."]){
        _convertedChar=@"6";
    }
    else if([_stringToChar isEqualToString:@"--..."]){
        _convertedChar=@"7";
    }
    else if([_stringToChar isEqualToString:@"---.."]){
        _convertedChar=@"8";
    }
    else if([_stringToChar isEqualToString:@"----."]){
        _convertedChar=@"9";
    }
    else if([_stringToChar isEqualToString:@".----."]){
        _convertedChar=@"\"";
    }
    else if([_stringToChar isEqualToString:@"---..."]){
        _convertedChar=@":";
    }
    else if([_stringToChar isEqualToString:@"--..--"]){
        _convertedChar=@",";
    }
    else if([_stringToChar isEqualToString:@"-....-"]){
        _convertedChar=@"-";
    }
    else if([_stringToChar isEqualToString:@"-.--.-"]){
        _convertedChar=@"(";
    }
    else if([_stringToChar isEqualToString:@".-.-.-"]){
        _convertedChar=@".";
    }
    else if([_stringToChar isEqualToString:@"..--.."]){
        _convertedChar=@"?";
    }
    else if([_stringToChar isEqualToString:@"-.-.-."]){
        _convertedChar=@";";
    }
    else if([_stringToChar isEqualToString:@"-..-."]){
        _convertedChar=@"/";
    }
    else if([_stringToChar isEqualToString:@"..--.-"]){
        _convertedChar=@"_";
    }
    else if([_stringToChar isEqualToString:@"---.."]){
        _convertedChar=@")";
    }
    else if([_stringToChar isEqualToString:@"-...-"]){
        _convertedChar=@"=";
    }
    else if([_stringToChar isEqualToString:@".--.-."]){
        _convertedChar=@"@";
    }
    else if([_stringToChar isEqualToString:@".-..-."]){
        _convertedChar=@"\\";
    }
    else if([_stringToChar isEqualToString:@".-.-."]){
        _convertedChar=@"+";
    }
    else{
        _convertedChar=@"";
    }
    
    NSLog(@"converted: %@", _convertedChar);
    [self addTextToTextView:_convertedChar];
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


- (IBAction)clearText:(id)sender {
    _textViewValue.text=@"";
}
@end
