//
//  TMRCodingBat.m
//  TamarindaKatas
//
//  Created by mariachi on 10/05/14.
//  Copyright (c) 2014 Tamara Bernad. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TMRCodingBat : XCTestCase

@end

@implementation TMRCodingBat

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
 MAKE BRICKS - Logic-2
 
 We want to make a row of bricks that is goal inches long. We have a number of small bricks (1 inch each) and big bricks (5 inches each). Return true if it is possible to make the goal by choosing from the given bricks. This is a little harder than it looks and can be done without any loops. See also: Introduction to MakeBricks
 
 makeBricks(3, 1, 8) → true
 makeBricks(3, 1, 9) → false
 makeBricks(3, 2, 10) → true
 
 */

- (BOOL) makeBricksWithSmall:(NSInteger )small Big:(NSInteger ) big AndGoal:(NSInteger) goal{
    NSInteger div = goal / 5;
    goal -= div >= big ? big * 5 : div * 5;
    return goal <= small;
}

- (void)testMakeBricks3_1_8
{
    
    XCTAssertEqual(YES, [self makeBricksWithSmall:3 Big:1 AndGoal:8]);
    
}
- (void)testMakeBricks3_2_9
{
    
    XCTAssertEqual(NO, [self makeBricksWithSmall:3 Big:2 AndGoal:9]);
    
}
@end
