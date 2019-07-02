//
//  LECEntry.h
//  JournalOBJC27
//
//  Created by Leah Cluff on 7/1/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LECEntry : NSObject

@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *bodytext;
@property(nonatomic, copy)NSDate *date;

-(instancetype)initWithTitle:(NSString*)title bodytext:(NSString*)bodytext;

-(void) addEntryObject:(LECEntry *)object;
-(void) removeEntry:(LECEntry *)objects;
-(void) updateEntry:(LECEntry *)object;

@end

NS_ASSUME_NONNULL_END
