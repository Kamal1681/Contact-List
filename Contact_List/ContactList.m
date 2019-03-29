//
//  ContactList.m
//  Contact_List
//
//  Created by Kamal Maged on 2019-03-24.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *) newContact {
    [self.contactList addObject:newContact];
}
-(void)printList: (NSArray *) contacts {
    for (Contact* contact in contacts) {
        NSLog(@"%lu: %@()", (unsigned long)[contacts indexOfObject:contact], [contact fullName]);
    }
}
-(void) show: (NSUInteger) showID {
    if (showID <= self.contactList.count) {
        NSLog(@"%@\n%@", [[self.contactList objectAtIndex:showID]fullName], [[self.contactList objectAtIndex:showID]email] );
    } else {
        NSLog(@"Contact not found");
    }
}
@end
