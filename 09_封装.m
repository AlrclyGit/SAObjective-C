

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    //  成员变量尽量不要用@public
    //  @public
    int age;
    
    //@@public
    //只读（readonly）：只允许外界访问我的no,不允许外界修改我的no
    int no;//只需要提供get方法
    
    

}


/*
 set方法
 1.作用：提供一个方法给外界设置成员变量值，可以在方法里面对参数进行过滤。
 2.命名规范：
 1>方法名必须以set开头
 2>set后面跟上成员变量的名称，成员变量的首字母必须大写
 3>返回值一定是void
 4>一定要接收一个参数，而且参数类型跟成员变量类型一致
 5>形参的名称不能跟成员变量名要样
*/
- (void)setAge:(int)newAge;

/*
 get方法
 1.作用：返回对象内部的成员变量
 2.命名规范：
 1>肯定有返回值，返回值类肯定与与成员变量类型一致
 2>方法名跟成员变量名一样
 3>不需要接收任何参数
 */

- (int)age;

- (void)study;
@end

@implementation Student

- (void)setAge:(int)newAge
{
    //  对传进来的参数进行过滤
    if (newAge <= 0) {
        newAge = 1;
    }
    age =newAge;
}

- (int)age
{
    return age;
}

- (void)study
{
    NSLog(@"%d岁的学生在学习", age);
}
@end

int main()
{
    
    Student *stu = [Student new];
    //stu->age = 20;
    [stu setAge:-10];
    //[stu study];
    [stu study];
    NSLog(@"学生的年龄是%d",[stu age]);
    
    return 0;
}