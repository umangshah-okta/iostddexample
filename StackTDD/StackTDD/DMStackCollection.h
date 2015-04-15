//
//  DMStackCollection.h
//  StackTDD
//
//  Created by Umang Shah on 4/14/15.
//  Copyright (c) 2015 Okta Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMStackCollection : NSObject
@property (nonatomic, readonly) NSUInteger count;
- (void)push:(id)object;
- (id)pop;
@end
