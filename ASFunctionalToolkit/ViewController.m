//
//  ViewController.m
//  ASFunctionalToolkit
//
//  Created by Andrzej Spiess on 29/04/15.
//  Copyright (c) 2015 Sweaty Fingers. All rights reserved.
//

#import "ViewController.h"
#import "ASFunctionalToolkit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *arrayOfValues = [NSMutableArray arrayWithArray:@[@5, @3, @6, @10, @120]];
    NSArray *filteredAndMapped = [[arrayOfValues filterWithBlock:^BOOL(id ob) {
        return [ob integerValue] % 2 == 0;
    }] mapWithBlock:^id(id ob) {
        return [NSString stringWithFormat:@"ball%@", ob];
    }];
    
    NSLog(@"%@", filteredAndMapped);
    
    NSNumber *sum = [arrayOfValues reduceFromSeed:@0 withBlock:^id(id total, id item) {
        return @([total integerValue] + [item integerValue]);
    }];
    
    NSLog(@"%@", sum);
}

@end
