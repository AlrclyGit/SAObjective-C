#import<Foundation/Foundation.h>

/*
 self的用途：
 
 1>概念：谁调用发当前方法，self就代表谁
 *self出现在对象方法中，self就代表对象
 *self出现在类方法中，，self就代表类
 
 2>在对象方法利用『self->成员变更名』访问当前对象内部的成员变量
 
 3>[self 方法名]可以调用其他对象方法\类方法;
 */

/////////这是一条可爱的分割线////////

/*
@interface Person : NSObject
{
    int _age;
}

- (void)setAge:(int)age;
- (int)age;

- （void）test;
@end



@implementation Person

- (void)setAge:(int)age
{
    //_age = age;
    self->_age = age;
}
- (int)age
{
    return self->_age;
}

- (void)test
{
    //self : 指向了方向调用者，代表着当前对象
    int _age = 20;
    NSLog(@"Pesrio的年龄是%d岁",self->_age);
}

@end


int main()
{
    Person *P = [Person new];
    
    [p setAge:10];
    
    [p test];
    
    return 0;
}
*/

//////////这是一条可爱的分割线/////////

/*
@implementation Dog : NSObject

- (void)bark;
_ (void)run;
@end

@implementation Dog

- (void)bark
{
    NSLog(@"汪汪汪")；
}

- (void)run
{
    [self bark];
    //NSLog(@"汪汪汪")；
    NSLog(@"GOGOGO")；
}

@end
int main()
{
    Dog *d = [Dog new];
    
    [d run];
    return 0;
}
*/