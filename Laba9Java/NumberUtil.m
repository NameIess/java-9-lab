//
//  NumberUtil.m
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+NumbersUtil.h"

@implementation NumberUtil

- (int) sumOfDigits:(NSString*) value {
    int sum = 0;
    for (int j = 0; j < [value length]; j ++) {
        sum += [value characterAtIndex:j];
    }
    return sum;
}

- (BOOL) isLucky:(NSString*)value {
    BOOL isLuck = false;
    
    if([value length] % 2 == 0) {
        NSString* leftPart = [value substringToIndex:[value length] / 2];
        NSString* rightPart = [value substringFromIndex:[value length] / 2];
        isLuck = [self sumOfDigits:leftPart] == [self sumOfDigits:rightPart];
    }
    
    return isLuck;
}

@end
