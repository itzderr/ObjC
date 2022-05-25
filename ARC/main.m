//
//  main.m
//  ARC
//
//  Created by Derrick Park on 2022-05-25.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Sweater.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    Person *derr = [[Person alloc] initWithName:@"Derrick"];
//    Person *leo = [[Person alloc] initWithName:@"Leo"];
    // derr --> @Person(@"Derrick")    +1
    // leo  --> @Person(@"Leo")        +1
    
//    Sweater *navySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
//    Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
    // navySweater   --> @Sweater(SweaterTypeNavy)         +1
    // blackSweater  --> @Sweater(SweaterTypeBlack)        +1
    
//    derr.sweater = blackSweater;
//    leo.sweater = navySweater;
    // derr.sweater   --> @Sweater(SweaterTypeBlack)       +2
    // leo.sweater    --> @Sweater(SweaterTypeNavy)        +2
    
    // * Retain Cycle
    Person *p1 = [[Person alloc] initWithName:@"Derrick"];
    Sweater *s1 = [[Sweater alloc] initWithSweaterType:SweaterTypeGray];
    p1.sweater = s1;
    s1.owner = p1;
    
    p1 = nil;
    s1 = nil;
    
  }
  return 0;
}
