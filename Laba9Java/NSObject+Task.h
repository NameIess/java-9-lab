//
//  NSObject+Task.h
//  Laba9Java
//
//  Created by Dima  on 12/9/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString* question;
@property (assign, nonatomic) NSInteger answer;
@property (assign, nonatomic) BOOL isRight;

- (instancetype)initWith:(NSString*) question answer:(NSInteger) answer;
- (BOOL) checkAnswer:(int) answer;
@end
