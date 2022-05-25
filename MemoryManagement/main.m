//
//  main.m
//  MemoryManagement
//
//  Created by Derrick Park on 2022-05-25.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Sweater.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Person *derr = [[Person alloc] initWithName:@"Derrick"];
    Person *david = [[Person alloc] initWithName:@"David"];
    // derr   --> @Person(@"Derrick")      +1
    // david  --> @Person(@"David")        +1
    
    Sweater *navySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
    Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
    // navySweater   --> @Sweater(SweaterTypeNavy)         +1
    // blackSweater  --> @Sweater(SweaterTypeBlack)        +1
    
    derr.sweater = blackSweater;
    david.sweater = navySweater;
    // sweater property(retain) will increment the ref count
    // derr.sweater     --> @Sweater(SweaterTypeBlack)       +2
    // david.sweater    --> @Sweater(SweaterTypeNavy)        +2
  
    [navySweater release];
    [blackSweater release];
    
    // derr.sweater     --> @Sweater(SweaterTypeBlack)       +1
    // david.sweater    --> @Sweater(SweaterTypeNavy)        +1
    
    david.sweater = blackSweater;
    // derr.sweater
    //                   --> @Sweater(SweaterTypeBlack)
    // david.sweater
    derr.sweater = nil;
    // david.sweater --> @Sweater(SweaterTypeBlack)
    
    NSString *quote = [derr quote];  // autorelease object
    NSLog(@"Quote: %@", quote);
    
    [derr release];
    [david release];
  }
  return 0;
}
// Manual Memory Management
//
// Automatic Reference Counting (ARC)
