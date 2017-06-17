//
//  SecondCommand.m
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "SecondCommand.h"

@implementation SecondCommand

- (id)initWithArgs:(int)aNumber
{
    self = [super init];
    _originalNumber = aNumber;
    _currentNumber = aNumber;
    return self;
}

-(void) execute
{
    _currentNumber++;
    [self printNumber];
}

-(void) undo
{
    if (_currentNumber > _originalNumber) _currentNumber--;
    [self printNumber];
}

-(void) printNumber
{
    NSLog(@"current number is %i", _currentNumber);
}

@end
/* сохраняет число и оригинал чтобы можно было отменить действие */
