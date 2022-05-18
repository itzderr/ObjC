//
//  NSString+Utilities.h
//  Categories
//
//  Created by Derrick Park on 2022-05-18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Utilities)

+ (NSString *)pluralized: (NSString *)str;
- (NSString *)pluralize;

@end

NS_ASSUME_NONNULL_END
