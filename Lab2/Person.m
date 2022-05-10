//
//  Person.m
//  Lab2
//
//  Created by Derrick Park on 2022-05-10.
//

#import "Person.h"
// - : instance method
// + : static method
@interface Person()

@property (nonatomic) NSString *username;

@end

@implementation Person {
  // by convention, private "instance variable" prefixed with _name
//  NSString *_name;
//  NSInteger _age+ (void) staticMethod;
}

- (instancetype)initWithName: (NSString *) name andAge: (NSInteger) age
{
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
    _username = @"";
  }
  return self;
}

- (void)printPersonInfo {
  NSLog(@"Name: %@, Age: %ld", _name, _age);
}

- (void)dealloc {
  NSLog(@"Gone!");
}

@end


// .h : header file - 'public'
// .m : implementation file - code 
