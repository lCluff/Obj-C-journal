//
//  LECEntry.m
//  JournalOBJC27
//
//  Created by Leah Cluff on 7/1/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

#import "LECEntry.h"

@interface LECEntry()

@property(nonatomic, strong) NSMutableArray *internalEntries;

@end

@implementation LECEntry

-(instancetype) initWithTitle:(NSString *)title bodytext:(NSString *)bodytext

{
    self = [super init];
    if (self) {
        _title = title;
        _bodytext = bodytext;
    }
    return self;
}
#pragma mark - Methods

-(void)addEntryObject:(LECEntry *)object
{
    [self.internalEntries removeObject:object];
}

-(void)removeEntry:(LECEntry *)objects
{
    [self.internalEntries removeObject:objects];
}
-(NSArray *) entries
{
    return self.internalEntries;
}
-(void)updateEntry:(LECEntry *)object
{
    [self.internalEntries removeObject:object];
}

@end
