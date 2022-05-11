//
//  main.m
//  Collections
//
//  Created by Derrick Park on 2022-05-11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Arrays (NSMutableArray, NSArray)
    NSArray *myArr = [[NSArray alloc] initWithObjects:@"Monday", @"Tuesday", @"Wednesday", nil];
    NSString *first = [myArr objectAtIndex:0];
    NSUInteger i = [myArr indexOfObject:@"Tuesday"];
    NSLog(@"%ld", i);
    NSLog(@"%@", first);
    
    NSMutableArray *mutArr = [[NSMutableArray alloc] init];
    // NSMutableArray *mut = [NSMutableArray new]; // shortcut
    [mutArr addObject:@"Vancouver"];
    [mutArr addObject:@"Burnaby"];
    [mutArr addObject:@"Surrey"];
    [mutArr addObject:@"Coquitlam"];
    [mutArr addObject:@"Richmond"];
    
    [mutArr removeObject:@"Richmond"];
    NSUInteger l = [mutArr count];
    NSLog(@"%@", mutArr);
    NSLog(@"%ld", l);
    
    // C-style array
    int arr[10];
    arr[0] = 1;
    
    // Sets (NSSet, NSMutableSet)
    NSSet *mySet = [[NSSet alloc] initWithObjects:@"one", @"two", @"one", nil];
    NSLog(@"%ld", [mySet count]);
    
    if ([mySet containsObject:@"one"]) {
      NSLog(@"YES");
    }
    
    NSMutableSet *mutSet = [NSMutableSet new];
    [mutSet addObject:@"one"];
    [mutSet addObject:@"two"];
    [mutSet addObject:@"three"];
    
    // Dictionaries (NSDictionary, NSMutableDictionary)
    NSDictionary *myDict = [[NSDictionary alloc] initWithObjectsAndKeys:@"Canada", @"ca", @"USA", @"us", nil];
    NSLog(@"%@", myDict[@"ca"]);
    
    NSMutableDictionary *mutDict = [NSMutableDictionary new];
    mutDict[@"hello"] = @"world";
    [mutDict objectForKey:@"hello"]; // mutDict[@"hello"]
    [mutDict setObject:@"Canada" forKey:@"ca"];
    
    NSLog(@"%@", mutDict[@"ca"]);
    
    // https://developer.apple.com/documentation/foundation/collections
    
    // 0 ~ 100
    int rand = arc4random_uniform(100);  // 0 ~ 2^32 - 1
    NSLog(@"%d", rand);
  }
  return 0;
}
