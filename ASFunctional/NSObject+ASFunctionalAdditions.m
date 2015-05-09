//
//  NSObject+ASFunctionalAdditions.m
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 29.04.2015.
//  Copyright (c) 2015 Perform. All rights reserved.
//

#import "NSObject+ASFunctionalAdditions.h"

@implementation NSObject (ASFunctionalAdditionsPrivate)

- (void)as_filter:(ASCollectionType)collection
             outputCollection:(id)outputCollection
              withFilterBlock:(BOOL (^)(id))filterBlock {
    NSParameterAssert(collection);
    NSParameterAssert(filterBlock);
    
    for(id obj in collection) {
        filterBlock(obj) ? [outputCollection addObject:obj] : NULL;
    }
}

- (id)as_reduce:(ASCollectionType)collection
           seed:(id)initialSeed
withReduceBlock:(id (^)(id, id))reduceBlock {
    NSParameterAssert(collection);
    NSParameterAssert(reduceBlock);
    
    id currentSeed = initialSeed;
    
    for(id obj in collection) {
        currentSeed = reduceBlock(currentSeed, obj);
    }
    
    return currentSeed;
}

- (void)as_map:(ASCollectionType)collection
          outputCollection:(id)outputCollection
              withMapBlock:(id (^)(id))mapBlock {
    NSParameterAssert(collection);
    NSParameterAssert(mapBlock);
    
    for(id obj in collection) {
        [outputCollection addObject:mapBlock(obj)];
    }
}

@end