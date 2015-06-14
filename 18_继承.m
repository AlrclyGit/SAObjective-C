#import<Foundation/Foundation.h>
/*
 1.继承的好处：
 11.制取重复代码
 12.建了类之间的关系
 13.子类可以拥有父类中的所有成员变更和方法
 
 2.注意点
 21.基本上所有类的根类是NSObject
 
 
 */
/*******Animal的声明***********/
@interface Animal : NSObject
{
    int _age;
    double _weight;
}

- (void)setAge:(int)age;
- (int)age;

- (void)setWetght:(double)weight;
- (double)wetght;
@end

/*******Animal的实现***********/
@implementation Animal

- (void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}

- (void)setWetght:(double)weight
{
    _weight = weight;
}
- (double)wetght
{
    return _weight;
}
@end

/*******Dog***********/
//:Animal 继承了Animal，相当于拥有了Animal里面的所有成员变更和方法
//Animal称为Dog的父类
//Dog称为Animal的子类
@interface Dog : Animal
@end

@implementation Dog
@end

/*******Cat***********/
@interface Cat : Animal
@end

@implementation Cat
@end




int main()
{
    Dog *d = [Dog new];
    
    [d setAge:10];
    
    NSLog(@"age=%d",[d age]);
    return 0;
    
}