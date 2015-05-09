//
//  NSSet+ASFunctionalAdditions.m
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 09/05/15.
//  Copyright (c) 2015 Sweaty Fingers. All rights reserved.
//

#import "NSSet+ASFunctionalAdditions.h"
#import "NSObject+ASFunctionalAdditions.h"

@implementation NSSet (ASFunctionalAdditions)

- (NSSet *)filterWithBlock:(BOOL (^)(id))filterBlock {
    NSMutableSet *filteredSet = [NSMutableSet set];
    [self as_filter:self outputCollection:filteredSet withFilterBlock:filterBlock];
    
    return filteredSet;
}

- (id)reduceFromSeed:(id)initialSeed
           withBlock:(id (^)(id, id))reduceBlock {
    return [self as_reduce:self seed:initialSeed withReduceBlock:reduceBlock];
}

- (NSSet *)mapWithBlock:(id (^)(id))mapBlock {
    NSMutableSet *mappedSet = [NSMutableSet set];
    [self as_map:self outputCollection:mappedSet withMapBlock:mapBlock];
    
    return mappedSet;
}

@end
