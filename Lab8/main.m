//
//  main.m
//  Lab8
//
//  Created by Derrick Park on 2022-05-19.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Server.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
    FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
    
    Cook *cook = [Cook new]; // strong
    Server *server = [Server new]; // strong
    
    truckA.delegate = cook; // weak
    truckB.delegate = server; // weak
    
    // create instances of your delegate class
    // set truckA and truckB's delegate to your new instance.
    [truckA serve:10];
    [truckB serve:5];
    
    [truckA cashOut];
    [truckB cashOut];
  }
  return 0;
}
