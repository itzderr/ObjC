//
//  Server.h
//  Lab8
//
//  Created by Derrick Park on 2022-05-19.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h""

NS_ASSUME_NONNULL_BEGIN

@interface Server : NSObject <FoodTruckDelegate>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
