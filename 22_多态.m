#import<Foundation/Foundation.h>


/*
 多态
 1.没有继承就没有多态
 2.代码的体现：父类类型的指针指向子类对象
 3.好处：如果函数\方法参数中使用的是是父类类型，可以传入父类、子类对象
 4.局限性
 4.1父类类型的变量 不能 直接调用子类特有的方法。必须强转为子类类型变量后，才能直接调用子类特有的方法
 */


//动物
@interface Animal : NSObjict
- (void)eat;

@end

@implementation Animal
- (void)eat
{
    NSLog(@"ANimal_吃东西-----");
}
@end

//狗
@interface Dog : Animal
- (void)run;
@end

@implementation Dog
- (vodi)ren
{
    NSLog(@"Dog-----跑起来");
}
- (void)eat
{
    NSLog(@"Dog_吃东西-----");
}
@end

//猫
@interface Cat : Animal

@end

@implementation Cat
- (void)eat
{
    NSLog(@"Cat_吃东西-----");
}
@end

//这具函数是专门用来喂动物
/*void feed(Dog *d)
{
    [d eat];
}

void feed2(Cat *d)
{
    [d eat];
}
 */

//如果参数中使用的是父类类型，可以传入父类、子类对象
void feed(Animal *d)
{
    [d eat];
}

int main()
{
    Dog *d =[Cat new];
    [d eat];
    
    //Animal *aa = [Dog new];
    //多态的局限性：父类类型的变更 不能用来调用子类的方法
    //[aa run];
    
    //将aa转为Dog *类型的变量
    Dog *dd = (Dog *)aa;
    
    [dd run];
    //Dog *d =[dog new];
    
    //[d run];
    /*
    Animal *aa = [Animal new];
    feed (dd);
    
    Dog *dd = [Dog new];
    feed(dd);
    
    Cat *cc = [Cat new];
    feed(dd);
     */
    
    /*
    NSString *s =[Cat new]
    
    Animal *c = [Cat new];
    
    NSObjict * = [Animal new];
    NSObjict * = [Dog new];//这样也是可行的！！
    
    // 多种形态
    Dog *d = [Dog new];//Dog类型
    
    //多态：父类指针指向子类对象
    Animal *a =[Dog new];
    
    //调用方法时会检测对象的真实形象
    [a eat];
     */
    
    return 0;
}