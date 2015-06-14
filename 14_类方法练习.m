#import<Foundation/foundation.h>

@interface JiSuanQi : NSObject

+(int)sumOfNum1:(int)num1 andNUm2:(int)num2;

+(int)averageOfNum1:(int)num1 andNUm2:(int)num2;

@end

@implementation JiSuanQi


+(int)sumOfNum1:(int)num1 andNUm2:(int)num2
{
    return num1 + num2;
}

+(int)averageOfNum1:(int)num1 andNUm2:(int)num2
{
    // 在这种情况下，self代表类
    return [self sumOfNum1:num1 andNUm2:num2]/2;
}

@end

int main()
{
    int a = [JiSuanQi sumOfNum1:10 andNUm2:20];
    
    NSLog(@"a=%d",a);
    
    return 0;
}