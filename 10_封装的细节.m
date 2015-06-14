

#import<Foundation/Foundation.h>

typedef enum
{/*成员变量的命名规范：一定要下划线_开头
  作用：
  1.让成员变量和get方法的名称区分开
  2.可以跟局部变量区分开，一年看到下划线开头的变量，一般都是成员变量
  */
    SexMan,
    SexWoman
}Sex;
@interface Student : NSObject
{
    int _no;
    Sex _sex;
}

//set和get方法
- (void)setSex:(Sex)newSex;
- (Sex)sex;

//no的set和get方法
- (void)setNO:(int)no;
- (int)no;
@end




@implementation Student

- (void)setSex:(Sex)Sex{
    _sex = Sex;
}

- (Sex)sex{
    return _sex;
}

- (void)setNO:(int)no;
{
    _no = no;
}

- (int)no;
{
    return _no;
}

@end

int main()
{
    Student *stu = [Student new];
    
    [stu setSex:SexMan];
    [stu setNo:10];
    
    [stu Sex];
    [stu no];
    
    return 0;
}

