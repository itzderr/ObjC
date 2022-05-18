//
//  NSString+Utilities.m
//  Categories
//
//  Created by Derrick Park on 2022-05-18.
//

#import "NSString+Utilities.h"

@implementation NSString (Utilities)

+ (NSString *)pluralized: (NSString *)str {
  return [NSString stringWithFormat:@"%@s", str];
}

- (NSString *)pluralize {
  return [self stringByAppendingFormat:@"s"];
}

@end
