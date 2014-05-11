//
//  TMRCodingBatArray_2.m
//  TamarindaKatas
//
//  Created by mariachi on 10/05/14.
//  Copyright (c) 2014 Tamara Bernad. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TMRCodingBatArray_2 : XCTestCase

@end

@implementation TMRCodingBatArray_2

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
/*
 
 Given an array length 1 or more of ints, return the difference between the largest and smallest values in the array. Note: the built-in Math.min(v1, v2) and Math.max(v1, v2) methods return the smaller or larger of two values.
 
 bigDiff({10, 3, 5, 6}) → 7
 bigDiff({7, 2, 10, 9}) → 8
 bigDiff({2, 10, 7, 2}) → 8
 
 
 */

/*
 Return the number of even ints in the given array. Note: the % "mod" operator computes the remainder, e.g. 5 % 2 is 1.
 
 countEvens({2, 1, 2, 3, 4}) → 3
 countEvens({2, 2, 0}) → 3
 countEvens({1, 3, 5}) → 0
 
 
 */
- (NSInteger) countEvens:(NSArray *)numbers{
    int __block count = 0;
    [numbers enumerateObjectsUsingBlock:^(id object, NSUInteger index, BOOL *stop) {
        count += [(NSNumber *)object integerValue] % 2 == 0 ? 1 : 0;
    }];
    return count;
}
- (void)testCountEvens_2_1_2_3_4
{
    NSInteger i = [self countEvens:@[@2,@1,@2,@3,@4]];
    XCTAssertEqual(3, i);
}
- (void)testCountEvens_2_2_0
{
    NSInteger i = [self countEvens:@[@2,@2,@0]];
    XCTAssertEqual(3, i);
}
- (void)testCountEvens_1_3_5
{
    NSInteger i = [self countEvens:@[@1,@3,@5]];
    XCTAssertEqual(0, i);
}


@end
