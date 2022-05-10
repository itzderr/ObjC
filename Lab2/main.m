//
//  main.m
//  Lab2
//
//  Created by Derrick Park on 2022-05-09.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // 1. allocate memory space
    // 2. initialzize the instance
    NSString *name = @"Messi";
    Person *p1 = [[Person alloc] initWithName:name andAge:35];
    [p1 printPersonInfo];
    [p1 name]; // calling a getter
    [p1 age];
    
  }
  return 0;
}

// Objective-C: NSObject
// Java: Object
// Swift
