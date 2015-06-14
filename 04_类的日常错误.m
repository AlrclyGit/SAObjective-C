void test2()
{

}

/*
 方法和函数的区别：
 1.对象方法都是以减号 －
 2.对象方法的声明必须写在@interface和end之间
   对象方法的实现必须写在@implementation和end之间
 3.对象方法只能由对象来调用
 
 函数
 1.涵数能写在文件中的任意位置(@interface和end之间)，涵数归文件所有
 2.函数调用不依赖于对象
 3.函数内部不能直接通过成员变量名访问某个对象的成员变量
 
 */



#import<Foundation/Foundation.h>

@interface Car : NSOject
{//成员变量/实例变量
    //int wheels = 4;不允许在这里初始化
    //static int wheels;不能随便将成员变量当做Ｃ语言中的变量来使用
    @public
    int wheels;
    
}

- (void)run;
- (void)fly;
@end



@interface Person : NSObject
@end

@implementation Person
@end




int mian()
{
    //wheels = 10;
    /*
    Car *c = [Car new];
    c->wheels = 4;
    //run();
    
    [c run];
     */
    void test2();
    
    test2();
    
    return 0;
}

@implementation Car

- (void)fly
{

}

void test()
{
    NSLog(@"调用了Test函数");
}

-(void)run
{
    test();
    NSLog(@"%d个轮子的车跑起来了",wheels);
}

@end