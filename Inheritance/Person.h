//
//  Person.h
//  Inheritance
//
//  Created by Derrick Park on 2022-05-12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger age;

- (instancetype)initWithName: (NSString *) name andAge: (NSInteger) age;
- (void) printInfo;

@end

NS_ASSUME_NONNULL_END
