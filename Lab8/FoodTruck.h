//
//  FoodTruck.h
//  FoodTruck
//.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end


@interface FoodTruck : NSObject

// id (objective-c) == Any (swift)

// id<FoodTruckDelegate>  "any type that conforms to FoodTruckDelegate Protocol"
@property (nonatomic, weak) id<FoodTruckDelegate> delegate;

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;
-(void)serve:(int)orders;
-(void)cashOut;

@end
