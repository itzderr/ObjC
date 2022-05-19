//
//  Server.m
//  Lab8
//
//  Created by Derrick Park on 2022-05-19.
//

#import "Server.h"

@implementation Server

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
  if ([food isEqualToString:@"bao"]) {
    return 5.0;
  } else if ([food isEqualToString:@"shortbread"]) {
    return 10.0;
  } else {
    return 20.0;
  }
}

@end
