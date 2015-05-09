//
//  ASFunctionalCollectionsBehaviour.h
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 29.04.2015.
//  Copyright (c) 2015 Perform. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef id<NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration> ASCollectionType;

@protocol ASFunctionalCollectionsBehaviour <NSObject>

/**
 *  Filter collection
 *
 *  @param filterBlock filter block with conditional to evaluate for each item.
 *
 *  @return returns new filtered collection
 */
- (NSArray *)filterWithBlock:(BOOL (^)(id obj))filterBlock;

/**
 *  Reduce collection
 *
 *  @param reduceBlock reduce block with logic for reducing each item
 *
 *  @return final object after reducing given collection
 */
- (id)reduceFromSeed:(id)initialSeed withBlock:(id (^)(id, id))reduceBlock;

/**
 *  Map collection
 *
 *  @param mapBlock map block with logic for mapping item to antoher item.
 *
 *  @return returns new mapped collection
 */
- (NSArray *)mapWithBlock:(id (^)(id obj))mapBlock;

@end
