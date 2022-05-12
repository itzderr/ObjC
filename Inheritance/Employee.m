//
//  Employee.m
//  Inheritance
//
//  Created by Derrick Park on 2022-05-12.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andPosition: (NSString *) position
{
  self = [super initWithName:name andAge:age];
  if (self) {
    _position = position;
  }
  return self;
}

- (void) printInfo {
  NSLog(@"Name: %@, Age: %ld, Position: %@", [super name], [super age], _position);
}

@end
