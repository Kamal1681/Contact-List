//
//  InputCollector.m
//  Contact_List
//
//  Created by Kamal Maged on 2019-03-21.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector
-(NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars[255];
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    self.userCommand = [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    [self inputEvaluation:self.userCommand];
    //self.printString = [promptString stringByAppendingString:self.userCommand];
    return self.userCommand;
}
-(void) inputEvaluation: (NSString *) command {
    if ([command  isEqual: @"exit"]) {
        NSLog(@"goodbye");
        exit(0);
    }
    if ([command  isEqual: @"new"]) {
        command = [self inputForPrompt:@"Full name:\n"];
        self.fullName = command;
        //NSLog(@"%@", self.fullName);
        command = [self inputForPrompt:@"email:\n"];
        self.email = command;
        //NSLog(@"%@", self.email);
    }
    if ([command  isEqual: @"list"]) {
        [self setList:YES];
    } else {
        [self setList:NO];
    }
    
    if ([command  containsString:@"show"]) {
        self.show = YES;
       self.showID = [[command substringFromIndex:4]integerValue];
    } else {
        self.show = NO;
    }
}

@end
