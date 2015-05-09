//
//  NSArray+ASFunctionalAdditions.m
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 29.04.2015.
//  Copyright (c) 2015 Perform. All rights reserved.
//

#import "NSArray+ASFunctionalAdditions.h"
#import "NSObject+ASFunctionalAdditions.h"

@implementation NSArray (ASFunctionalAdditions)

- (NSArray *)filterWithBlock:(BOOL (^)(id))filterBlock {
    NSMutableArray *filteredArray = [NSMutableArray array];
    [self as_filter:self outputCollection:filteredArray withFilterBlock:filterBlock];
    
    return filteredArray;
}

- (id)reduceFromSeed:(id)initialSeed
           withBlock:(id (^)(id, id))reduceBlock {
    return [self as_reduce:self seed:initialSeed withReduceBlock:reduceBlock];
}

- (NSArray *)mapWithBlock:(id (^)(id))mapBlock {
    NSMutableArray *mappedArray = [NSMutableArray array];
    [self as_map:self outputCollection:mappedArray withMapBlock:mapBlock];
    
    return mappedArray;
}

@end
