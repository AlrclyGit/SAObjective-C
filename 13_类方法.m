#import<Foundation/foundation.h>
/*
 对象方法
 1>减号 - 开头
 2>只能由对象来调用
 3>对象方法能访问实例变量（成员变量）
 
 类方法
 1>加号 + 开头
 2>只能由类（名）来调用
 3>类方法不能访问实例变量（成员变量）
 
 类方法的好处和使用场合
 1>不依赖于对象，执行效率高
 2>能用类方法尽量用类名
 3>场合：当方法内部不需要使用到成员变量时，就可以改为类方法
 
 可以允许类方法和对象方法同名
 */



@interface Person : NSObject
{
    int age;
}

//类方法者是以+开关
+ (void) printClassName;
-（void）test;
+ (void) test;
@end

@implementation Person

+ (void)printClassName
{
    NSLog(@"这个类叫做Person");
}

-(void)test
{
    NSLog(@"111-%d",age);
    
    [Person test];//对象方法中能调用类方法

}

+(void)test
{
    NSLog(@"333")；//与下面一行换了，也会
    
    [Person test];//会引发死循环
}
@end

int main()
{
    //[Person test];
    
    //[Person printClassName];
    
    Person *p = [Person new];
    
    [p test];
    
    //系统会认为现在调用的printClassName是个对象方法
    
    //[P printClassName];
    
    return 0;
}