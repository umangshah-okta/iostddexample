//
//  DMStackCollection.m
//  StackTDD
//
//  Created by Umang Shah on 4/14/15.
//  Copyright (c) 2015 Okta Inc. All rights reserved.
//

#import "DMStackCollection.h"


@interface DMStackCollection ()
@property (nonatomic, strong) NSMutableArray *list;
@end

@implementation DMStackCollection

- (instancetype)init {
    self = [super init];
    if (self) {
        self.list = [NSMutableArray array];
    }
    return self;
}

- (NSUInteger)count {
    return self.list.count;
}

- (void)push:(id)object {
    [self.list addObject:object];
}

- (id)pop {
    return nil;
}
@end
