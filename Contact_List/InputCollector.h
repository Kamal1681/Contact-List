//
//  InputCollector.h
//  Contact_List
//
//  Created by Kamal Maged on 2019-03-21.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
@property (nonatomic) NSString * printString;
@property (nonatomic) NSString * userCommand;
@property (nonatomic) NSString * fullName;
@property (nonatomic) NSString * email;
@property (nonatomic) BOOL list;
@property (nonatomic) BOOL show;
@property (nonatomic) NSUInteger showID;
-(NSString *) inputForPrompt: (NSString *)promptString;
-(void) inputEvaluation: (NSString *) command;
@end

NS_ASSUME_NONNULL_END
