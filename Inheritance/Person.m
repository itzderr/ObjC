//
//  Person.m
//  Inheritance
//
//  Created by Derrick Park on 2022-05-12.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName: (NSString *) name andAge: (NSInteger) age
{
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
  }
  return self;
}

- (void) printInfo {
  NSLog(@"Name: %@, Age: %ld", _name, _age);
}

@end
