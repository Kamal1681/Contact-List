//
//  ContactList.h
//  Contact_List
//
//  Created by Kamal Maged on 2019-03-24.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property (nonatomic) NSMutableArray <Contact *> * contactList;
-(void)addContact:(Contact *) newContact;
-(void)printList: (NSArray *) contacts;
-(void) show: (NSUInteger) showID;
@end

NS_ASSUME_NONNULL_END
