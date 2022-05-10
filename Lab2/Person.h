//
//  Person.h
//  Lab2
//
//  Created by Derrick Park on 2022-05-10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

// public properties
// strong vs weak : only for reference types
// strong: increments the reference count of the object
// weak: does not increment the reference count of the object
@property (nonatomic, readwrite, copy) NSString *name;
@property (nonatomic, readonly, assign) NSInteger age;

// public methods
- (instancetype)initWithName: (NSString *) name andAge: (NSInteger) age;
- (void) printPersonInfo;

@end

NS_ASSUME_NONNULL_END
