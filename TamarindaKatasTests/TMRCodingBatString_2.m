//
//  TMRCodingBatString_2.m
//  TamarindaKatas
//
//  Created by mariachi on 10/05/14.
//  Copyright (c) 2014 Tamara Bernad. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TMRCodingBatString_2 : XCTestCase

@end

@implementation TMRCodingBatString_2

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
 Return true if the string "cat" and "dog" appear the same number of times in the given string.
 
 catDog("catdog") → true
 catDog("catcat") → false
 catDog("1cat1cadodog") → true
 
 */
- (NSInteger) findOccurencesOf:(NSString *)search In:(NSString *)str{
    int count =0;
    NSRange r = NSMakeRange(0, str.length);
    while ((r = [str rangeOfString:search options:NSCaseInsensitiveSearch range:r]).length > 0) {
        NSInteger newIndex = r.length + r.location;
        r = NSMakeRange(newIndex, str.length - newIndex);
        count++;
    }
    return count;

}
- (BOOL) catDog:(NSString *)str{
    
    int countCat =[self findOccurencesOf:@"cat" In:str];
    int countDog =[self findOccurencesOf:@"dog" In:str];
    return countCat == countDog;
}

- (void)testCatDog_catdog
{
    XCTAssertEqual(YES, [self catDog:@"catdog"]);
}
- (void)testCatDog_catcat
{
    XCTAssertEqual(NO, [self catDog:@"catcat"]);
}
 
- (void)testCatDog_1cat1cadodog
{
    XCTAssertEqual(YES, [self catDog:@"1cat1cadodog"]);
}

@end
