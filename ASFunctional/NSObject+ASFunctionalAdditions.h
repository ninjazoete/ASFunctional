//
//  NSObject+ASFunctionalAdditions.h
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 29.04.2015.
//  Copyright (c) 2015 Perform. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASFunctionalCollectionsBehaviour.h"

@interface NSObject (ASFunctionalAdditionsPrivate)

- (void)as_filter:(ASCollectionType)collection
             outputCollection:(id)outputCollection
              withFilterBlock:(BOOL (^)(id))filterBlock;

- (id)as_reduce:(ASCollectionType)collection
           seed:(id)initialSeed
withReduceBlock:(id (^)(id, id))reduceBlock;

- (void)as_map:(ASCollectionType)collection
          outputCollection:(id)outputCollection
              withMapBlock:(id (^)(id))mapBlock;

@end
