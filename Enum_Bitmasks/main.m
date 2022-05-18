//
//  main.m
//  Enum_Bitmasks
//
//  Created by Derrick Park on 2022-05-16.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(char, VideoGameType) {
  VideoGameTypeRPG,
  VideoGameTypeStrategy,
  VideoGameTypeAction,
  VideoGameTypeFPS
};

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    VideoGameType type = VideoGameTypeRPG;
    NSLog(@"%d", type);
    NSLog(@"sizeof(type) = %ld", sizeof(type));  // sizeof is an operator to get the number of bytes
    NSLog(@"sizeof(int) = %ld", sizeof(int));  // sizeof is an operator to get the number of bytes
    
    switch (type) {
      case VideoGameTypeRPG:
        NSLog(@"RPG");
        break;
      case VideoGameTypeStrategy:
        NSLog(@"Strategy");
        break;
      case VideoGameTypeAction:
        NSLog(@"Action");
        break;
      case VideoGameTypeFPS:
        NSLog(@"FPS");
        break;
    }
  }
  return 0;
}
