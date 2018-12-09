//
//  HeadsTaill.m
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+HeadsTail.h"

@implementation HeadsTail

- (NSInteger) headsOrTail {
    return (arc4random()%(2 - 0)) + 0;
}

- (NSString*) headsTail:(NSUInteger) flipAmount {
    NSInteger headAmount = 0;
    NSInteger tailAmount = 0;

    for (NSInteger i = 0; i < flipAmount; i++) {
        if ([self headsOrTail] == 1) {
            headAmount++;
        } else {
            tailAmount++;
        }
    }
    
    return [NSString stringWithFormat:@"Heads amount = %@, Tails amount = %@", [NSNumber numberWithInteger:headAmount], [NSNumber numberWithInteger:tailAmount]];
}

@end
