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

@end
