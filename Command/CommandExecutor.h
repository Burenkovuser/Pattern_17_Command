//
//  CommandExecutor.h
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCommand.h"

@interface CommandExecutor : NSObject
{
@private NSMutableArray *_arrayOfCommands;
}

-(void) addCommand:(BaseCommand *) aCommand;
-(void) executeCommands;
-(void) undoAll;

@end
