//
//  Employee.h
//  Inheritance
//
//  Created by Derrick Park on 2022-05-12.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person

@property (nonatomic) NSString *position;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andPosition: (NSString *) position;
- (void) printInfo;

@end

NS_ASSUME_NONNULL_END
