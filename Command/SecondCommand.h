//
//  SecondCommand.h
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "BaseCommand.h"

@interface SecondCommand : BaseCommand
{
@private int _originalNumber;
@private int _currentNumber;
}

-(id) initWithArgs: (int) aNumber;
-(void) printNumber;

@end
