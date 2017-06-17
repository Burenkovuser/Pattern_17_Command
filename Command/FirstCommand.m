//
//  FirstCommand.m
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "FirstCommand.h"

@implementation FirstCommand

-(id) initWithArguments:(NSString *)anArgument
{
    self = [super init]; _originalString = anArgument; _currentString = anArgument;
    return self;
}

-(void) execute
{
    _currentString = @"This is a new string"; [self printString];
    NSLog(@"Execute command called");
}

-(void) undo
{
    _currentString = _originalString; [self printString];
    NSLog(@"Undo of execute command called");
}
          
-(void) printString
{
      NSLog(@"Current string is equal to %@", _currentString);
}

@end

/*
команда просто умеет менять одну строчку. При чем всегда хранит оригинал, чтобы можно было отменить изменение.
*/
