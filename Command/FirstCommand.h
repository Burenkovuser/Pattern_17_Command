//
//  FirstCommand.h
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "BaseCommand.h"

@interface FirstCommand : BaseCommand
{
    @private NSString *_originalString;
    @private NSString *_currentString;
}

-(id) initWithArguments: (NSString *) anArgument;
-(void) printString;

@end
