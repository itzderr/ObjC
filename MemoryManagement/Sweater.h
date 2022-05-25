//
//  Sweater.h
//  MemoryManagement
//
//  Created by Derrick Park on 2022-05-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Person;

typedef NS_ENUM(unsigned char, SweaterType) {
  SweaterTypeGray,
  SweaterTypeNavy,
  SweaterTypeBlack,
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
- (instancetype)initWithSweaterType:(SweaterType) type;

@end

NS_ASSUME_NONNULL_END
