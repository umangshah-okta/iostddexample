//
//  StackTDDTests.m
//  StackTDDTests
//
//  Created by Umang Shah on 4/14/15.
//  Copyright (c) 2015 Okta Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DMStackCollection.h"

@interface StackTDDTests : XCTestCase
@property (nonatomic, strong) DMStackCollection *stack;
@end

@implementation StackTDDTests

- (void)setUp {
    [super setUp];
     self.stack = [[DMStackCollection alloc] init];
}

- (void)tearDown {
    [super tearDown];
}


- (void) testThatICanCreateACollectionThatOperatesAsAStack {
    NSAssert(self.stack != nil, @"stack could not be created");
}

- (void)testThatICanPushAnObjectOntoTheStack {
    [self.stack push:@"something for the stack"];
    NSAssert(self.stack.count == 1, @"stack should contain 1 object");
}

- (void)testThatICanPopAnObjectFromTheStack {
    [self.stack push: @"something for the stack"];
    NSAssert(self.stack.count == 1, @"stack should contain 1 object");
    [self.stack pop];
    NSAssert(self.stack.count == 0, @"stack should contain 1 object");
}

- (void)testStackCanHoldAtleast10Objects {
    NSUInteger itemCount;
    for (itemCount = 0 ; itemCount < 12 ; itemCount++) {
        [self.stack push: [NSString stringWithFormat:@"Item %lu", (unsigned long)itemCount]];
    }
    NSAssert(self.stack.count == 12, @"number of objects on stack should equal 12");
    
    NSString *objectFromStack;
    while ((objectFromStack = [self.stack pop]) != nil) {
        itemCount--;
        
        NSString *expectedObject = [NSString stringWithFormat:@"Item %lu", (unsigned long)itemCount];
        
        NSAssert([expectedObject isEqual:objectFromStack], @"popped item should be same as pushed");
    }
    
    NSAssert(itemCount == 0, @"all items should have been popped");
}
@end
