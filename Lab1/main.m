//
//  main.m
//  Lab1
//
//  Created by Derrick Park on 2022-05-09.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt) {
  char inputChars[255];
  
  NSLog(@"%@", prompt);
  fgets(inputChars, 255, stdin);
  NSString *str = [NSString stringWithUTF8String:inputChars];
  return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *input = getUserInput(@"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove punctuations\n9. Done\n");
    
    if ([input isEqualToString: @"9\n"]){
      NSLog(@"Saliendo");
    } else if ([input isEqualToString: @"1\n"]){
      NSLog(@"Debug_1");
    }
  }
  return 0;
}
