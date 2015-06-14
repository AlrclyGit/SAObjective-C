#import<Foundation/Foundation.h>

/*
 计算器类
 方法：
 1>返回 Pi
 2>计算两个整数的平方
 3>计算两个整数的和
*/

@interface JiSuanQi : NSObject
// 方法名：pi
-(double)pi;

//oc方法中，一个参数对应一个冒号
//方法名：pingfang:(冒号也是方法名的一部分)
-(int)pingfang:(int)num;

//-(int)sum:(int)num1 :(int)num2;
//方法名：sumWitchNum1:andNum2:
-(int)sumWichNum1:(int)num1 andNum2:(int)num2;

//-(int)sumWichNum1:(int)num1 andNum2:(int)num2 andNum3:(int)num3
@end

@implementation JiSuanQi

-(double)pi
{
    return 3.1415926;
}

-(int)pingfang:(int)num
{
    return num *num;
}

//-(int)sum:(int)num1 :(int)num2
-(int)sumWichNum1:(int)num1 andNum2:(int)num2

{
    return num1 + num2;
}
@end

int main()
{
    JiSuanQi *jsq = [JiSuanQi new];
    
    //double a = [jsq pi];
    
    //int a = [jsq pingfang:10];
    
    //int a = [jsq sum:10 :5];
    
    int a = [jsq sumWichNum1:10 andNum2:5];
    

    
    NSLog(@"%i",a);
}