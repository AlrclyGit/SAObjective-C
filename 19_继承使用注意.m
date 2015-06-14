/*
 1.重写：子类重新实现父类中的某个方法，覆盖父类以前的做法
 2.注意
 21.父类必须声明在子类的前面
 22.子类不能拥有和父类相同的成员变量
 23.调用某个对象的方法时，优先去当前类中找，如果找找不到，到父类去找
 
 3.坏处：耦合性太强
 */


#import<Foundation/Foundation.h>
//Person
@interface Person : NSObject
{
    int _age;
}

- (void)setAge:(int)age;
- (int)age;
- (void)run;
+ (void)test;
@end


@implementation Person

+ (void)test
{
    SNLog(@"Person+test");
}

- (void)run
{
    NSLog(@"preson——跑");
}

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}
@end

//不请允许子类和父类有相同名称的成员变量
//Student

@interface Student : Person

{
    int _no;
    //int _age;
}
+ (void)test2;
@end

@implementation Student
+ (void)test
{
    SNLog(@"Student+test");
}
//重写：子类重新实现父类中的某个方法，覆盖父类以前的做法
-(void)run
{
    NSLog(@"Student——跑");
}

+ (void)test2
{
    [self test];
}
@end



int main()
{
    [Ptudent test2];
 //   Student *p = [Student new];
 //  [p run];
    
    return 0;
}