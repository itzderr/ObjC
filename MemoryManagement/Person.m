//
//  Person.m
//  MemoryManagement
//
//  Created by Derrick Park on 2022-05-25.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
  if ((self = [super init])) {
    _name = [name retain]; // manual management
    _sweater = nil;
  }
  return self;
}

- (NSString *)quote {
  // Does not starts with init or copy
  return [[[NSString alloc] initWithFormat:@"%@ says: Give me my sweater back!", _name] autorelease];
}

- (NSString *)description {
  if (_sweater) {
    return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
  } else {
    return _name;
  }
}

- (void) dealloc {
  NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
  [_sweater release];
  _sweater = nil;
  [_name release];
  _name = nil;
  [super dealloc];
}

@end
