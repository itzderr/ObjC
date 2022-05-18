//
//  Bitmasks.m
//  Enum_Bitmasks
//
//  Created by Derrick Park on 2022-05-16.
//

#import "Bitmasks.h"

// bitwise operator
// - left shift <<
// - right shift >>
// - or  |
// - and &

typedef NS_OPTIONS(char, Language) {
  English  = 1 << 0,  // 1
  French   = 1 << 1,  // 2
  Spanish  = 1 << 2,  // 4
  Chinese  = 1 << 3,  // 8
};

Language support = English | French;  // 3
Language support2 = English | French | Spanish;  // 7
Language support3 = English | French | Spanish | Chinese;  // 15
Language support4 = English | Spanish;  // 5

@implementation Bitmasks

void supportLanguage(Language l) {
  if (l & English) {
    NSLog(@"English is supported!");
  } else if (l & French) {
    NSLog(@"French is supported!");
  }
}

@end
