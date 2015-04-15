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

@end

@implementation StackTDDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



- (void) testThatICanCreateACollectionThatOperatesAsAStack {
    DMStackCollection *stack = [[DMStackCollection alloc] init];
    NSAssert(stack != nil, @"stack could not be created");
}

- (void) testThatICanPushAnObjectOntoTheStack {
    DMStackCollection *stack = [[DMStackCollection alloc] init];
    [stack push: @"something for the stack"];
    
    NSAssert(stack.count == 1, @"stack should contain 1 object");
}
@end
