//
//  TaskFactory.m
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+TaskFactory.h"

@implementation TaskFactory

- (NSMutableArray*) create:(NSInteger) to {
    NSMutableArray* array = [[NSMutableArray alloc] init];
    for (NSInteger i = 1; i <= to; i++) {
        for (NSInteger j = 1; j <= 10; j++) {
            NSString* question = [NSString stringWithFormat:@"%@ * %@ = ",[NSNumber numberWithInteger:i], [NSNumber numberWithInteger:j]];
            Task* task = [[Task alloc] initWith:question answer: j * i];
            [array addObject:task];
        }
    }
    return array;
}

@end
