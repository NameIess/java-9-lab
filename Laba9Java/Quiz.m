//
//  Question.m
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Question.h"

@implementation Quiz

- (double) getPersentOfRightAnswers {
    double totalTasks = [self.tasks count];
    double totalRightAnswers = 0;
    
    for (Task* task in self.tasks) {
        if (task.isRight) {
            totalRightAnswers++;
        }
    }

    return totalRightAnswers / totalTasks * 100;
}

@end
