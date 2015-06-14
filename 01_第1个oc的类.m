/*
 类名：Car
 属性：轮胎个数。时速（速度）
 行为：跑
*/

//因为使用了SNObject
#import <Foundation/Foundation.h>

//完整地写了一个函数：函数的声明和定义（实现）
//完整地写一个类：类的声明和实现

//1.类的声明
//声明对象的属性，行为
//: NSObject 目地是：让Car这个类具备创建对象的能力
@interface Car : NSObject
{//用来声明对象属性（实例变量＼成员变量 ，默认会初始化为0）
    //@public可以让外部的指针间接访问对象内部的成员变量
    @public
    int wheels;//轮胎个数
    int speed;//时速(xxkm/h)
}

//方法（行为）：方法名，参数，返回值（声明，实现）
//呆要是OC对象的方法，必须以减号 － 开关
//OC方法中任何数据类型都必须用小括号（）括住
//OC方法中的小括号（）：括住数据类型
- (void) run;


@end


//2.类的实现
//用来实现@inteface中声明的方法
@implementation Car
//方法的实现（说清楚方法里面有什么代码）

- (void)run
{
    NSLog(@"车子跑起来了")；
}

@end

int main()
{
    //在oc中，想执行一些行为，就写上一个中括号[行为执行者 行为名称]
    //利用类来创建对象
    //执行了Car这个类的new行为来创建新对象
    
    //定义了一个指针变量Car1,Car1将来指向的是Car类型的对象
    // [Car new]会创建一个新对象，并且会返回瓣对象本身（新对象 地址 ）
    Car *Car1 = [Car new];
    Car *Car2 = [Car new];
    
    Car2->wheels = 5;
    Car2->speed = 300;
    
    //给Car1所指向对象的wheels属性赋值
    Car1->wheels = 4;
    Car1->speed = 250;
    
    //给Car1所指向对象发送一条run消息
    ［Car1 run］；
    
    NSLog(@"车子有%d个轮子，时速位：%dkm/h",Car1->wheels,Car2->speed);
    
    return 0;
}