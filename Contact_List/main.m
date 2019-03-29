//
//  main.m
//  Contact_List
//
//  Created by Kamal Maged on 2019-03-21.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList * contactList = [[ContactList alloc]init];
        while (YES) {
            InputCollector * inputCollector = [[InputCollector alloc]init];
            NSString * menu = @"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application: ";
            [inputCollector inputForPrompt:menu];
            Contact * contact = [[Contact alloc]init];
            
            [contact setFullName:inputCollector.fullName];
            [contact setEmail:inputCollector.email];
            if ([[contact fullName] isNotEqualTo:NULL]) {
               [contactList addContact:contact];
            }
            if ([inputCollector list]) {
                [contactList printList:[contactList contactList]];
            }
            if ([inputCollector show]) {
                [contactList show:[inputCollector showID]];
            }
        }
    }
    return 0;
}
