//
//  BaseCommand.h
//  Command
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCommand : NSObject

-(void) execute;
-(void) undo;

@end
