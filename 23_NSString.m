#include<Foundation.Fountation.h>

@interface Person : NSObject
{
    //char *_name;
    NSString *_name;
}
@end

@implementation Person


@end
int main()
{
    /*
    //最简单的创建字符串的方式
    NSString *str = @"itcast";
    
    char *name = "itcast";
    
    NsLog(@"我在%@上课"，str)；
    //NSLog(@"%s",name);
    */
    
    int age =10;
    int no =5;
    
    NSString *name = @"jack";
    //length方法算的是字数

    int size = [name length];
    
    NSLog(@"%d",size);
    
    //创建OC字符串的另一种方式
    NSString *newStr = [NSString stringWtthFormat: @"My age is %d and no is %d and name is %@",age,no,name];
    
    NSLog(@"------%@",newStr);
    
    return 0;
}