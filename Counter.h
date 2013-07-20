//
//  Counter.h
//  CountTest
//
//  Created by 原田 勝信 on 2013/02/19.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Counter : NSObject 
    
//@property(nonatomic, assign)int count;

- (id)init;
- (void)increment;
- (void)decrement;
- (void)reset;
- (int)now;

@end