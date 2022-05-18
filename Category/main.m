//
//  main.m
//  Category
//
//  Created by Derrick Park on 2022-05-18.
//

#import <Foundation/Foundation.h>
#import "NSString+Utilities.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSLog(@"%@", [NSString pluralized:@"phone"]);
    
    NSString *s = @"phone";
    NSLog(@"%@", [s pluralize]);
    
  }
  return 0;
}
