//
//  CommandExecutor.m
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "CommandExecutor.h"

@implementation CommandExecutor

-(id) init
{
    self = [super init];
    _arrayOfCommands = [[NSMutableArray alloc] init]; return self;
}

-(void) addCommand:(BaseCommand *) aCommand
{
    //id<CommandProtocol> item = aCommand;
    [_arrayOfCommands addObject:aCommand];
}

-(void) executeCommands
{
    for (BaseCommand *command in _arrayOfCommands) {
        [command execute];
    }
}

-(void) undoAll
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command undo];
    }
}

@end

/*  менеджер может получать очередь команд, и выполнять их все, или даже отменять все действия
*/
