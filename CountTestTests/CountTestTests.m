//
//  CountTestTests.m
//  CountTestTests
//
//  Created by 原田 勝信 on 2013/02/19.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "CountTestTests.h"

@implementation CountTestTests {
    Counter *counter;
}

- (void)setUp
{
    [super setUp];
    // Set-up code here.
    counter = [[Counter alloc] init];
    STAssertNotNil(counter, @"カウンターが初期化できません。");
}

- (void)tearDown
{
    // Tear-down code here.
    [counter release];
    [super tearDown];
}

- (void)testInit {
    STAssertEquals([counter now], 0, @"カウンターの初期値が0ではありません");
}

- (void)testReset {
    [counter reset];
    STAssertEquals([counter now], 0, @"カウンターが初期化できません");
}

- (void)testIncliment {
    [counter increment];
    STAssertEquals([counter now], 1, @"インクリメントできません");
}

- (void)testInclimentof100 {
    for (int i=0; i < 100; i++) {
        [counter increment];
    }
    STAssertEquals([counter now], 100, @"インクリメントできません");
}

- (void)testDecliment {
    [counter decrement];
    STAssertEquals([counter now], -1, @"デクリメントできません");
}

@end
