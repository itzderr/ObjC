//
//  Person.h
//  MemoryManagement
//
//  Created by Derrick Park on 2022-05-25.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@class Sweater; // Pre-declare, telling the compiler that Sweater class exists.

@interface Person : NSObject

@property (nonatomic, retain) Sweater *sweater;
@property (nonatomic, retain) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end

NS_ASSUME_NONNULL_END
