//
//  main.m
//  ObjectiveC
//
//  Created by Derrick Park on 2022-05-09.
//

#import <Foundation/Foundation.h>

typedef int num;

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // C
    printf("Hello, World!\n");
    bool flag1 = true; // false
    float f1 = 3.14f;
    double d1 = 3.14;
    unsigned int x = 10; // signed
    
    char c = 'A';
    long long l = 100000;
    
    int8_t i1 = 127;
    int16_t i2 = 127;
    int32_t i3 = 127;
    int64_t i4 = 127;
    
    // Objective-C
    // Use Objective-C BOOL
    NSLog(@"Hello, World!");
    BOOL flag2 = YES; // NO
    CGFloat f2 = 3.14;
    NSInteger i5 = 10;
    NSUInteger i6 = 10; // unsigned -> positive only
    
    // in Objective-C (NSString)
    NSString *name = @"Derrick";
    
    // int len = name.length();
    NSUInteger len = [name length];
    
    // int i = name.compare(@"Hello");
    NSComparisonResult i = [name compare:@"Hello"];
    if (i == 0) {
      
    } else if (i < 0) {
      
    } else {
      
    }
    
    NSString *upper = [name uppercaseString];
    NSLog(@"Hello, %@", upper);
    
    // in C (C String)
//    char *s1 = "Derrick";
//    char s2[] = "Derrick";
//    char s3[8] = "Derrick";
//    char s4[8] = {'D', 'e', 'r', 'r', 'i', 'c', 'k', '\0'};
//
//    printf("%p %p\n", s4, &s4[0]);
  }
}

// C: 1970 ~
// Objective-C: C + class (oop)
// NextStep (Steve Jobs), Apple - Operating System
