//
//  Counter.m
//  CountTest
//
//  Created by 原田 勝信 on 2013/07/20.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Counter.h"

@implementation Counter {
    int _count;
}

- (id)init {
    self = [super init];
    if (self) {
    }
    _count = 0;
    return self;
}

-(int)now {
    return _count;
}

- (void)increment {
    _count += 1;
}

- (void)decrement {
    _count -= 1;
}

- (void)reset {
    _count = 0;
}

@end
