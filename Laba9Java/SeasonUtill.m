//
//  SeasonUtill.m
//  Laba9Java
//
//  Created by Dima  on 12/7/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+SeasonUtill.h"

@interface SeasonUtill ()

@property (strong, nonatomic) NSDictionary* monthForSeason;

@end

@implementation SeasonUtill

- (instancetype)initWith
{
    self = [super init];
    if (self) {
        self.monthForSeason = [[NSDictionary alloc] initWithObjectsAndKeys:
                               @"winter", @"12", @"winter", @"1", @"winter", @"2",
                               @"spring", @"3", @"spring", @"4", @"spring", @"5",
                               @"summer", @"6", @"summer", @"7", @"summer", @"8",
                               @"fall", @"9", @"fall", @"10", @"fall", @"11",
                               nil];
    }
    return self;
}

- (NSString*) getSeasonByMonth:(NSString*)monthIndex {
    
    NSString* season = [self.monthForSeason objectForKey:monthIndex];
    
    return season != nil ? season : @"invalid month index";
}

@end
