//
//  NSObject+Question.h
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Task.h"

@interface Quiz : NSObject

@property (strong, nonatomic) NSMutableArray* tasks;
- (double) getPersentOfRightAnswers;

@end
