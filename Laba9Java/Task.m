//
//  Task.m
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Task.h"

@implementation Task

- (instancetype)initWith:(NSString*) question answer:(NSInteger) answer
{
    self = [super init];
    if (self) {
        self.question = question;
        self.answer = answer;
    }
    return self;
}

- (BOOL) checkAnswer:(int)answer {
    if (answer == self.answer) {
        self.isRight = true;
    }
    return self.isRight;
}



@end
