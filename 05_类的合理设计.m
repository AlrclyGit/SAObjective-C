


typedef enum{
    SexMan,
    SexWoman
}Sex;

typedef struct{
    int year;
    int month;
    int day;
}Date;

typedef enum{
    ColorBlack,
    ColorRed,
    ColorGreen
}Color;

#import<Foundation/Foundation.h>


@interface Dog : NSObject
{
    @public
    double weight;//体得
    Color curColor;//毛色
}
- (void)eat;
- (void)run;
@end

@implementation Dog
- (void)eat
{
    //每吃一次，体重就加1
    weight += 1;
    NSLog(@"狗吃完这次后的体重是%f",weight);
}

- (void)run
{
    weight -= 1;
    NSLog(@"狗跑完这次后的体重是%f",weight);
}
@end

/*
 学生
 成员变量：性别，生日，体重，最喜欢的颜色，狗(体重，毛色，吃，跑)
 方法：吃，跑步，狗(让狗跑)，喂狗（让狗吃）
*/

@interface Student : NSObject
{
    @public
    Sex sex;//性别
    Date birthday;//生日
    double weight;//体重
    Color favCololr;//最喜欢的颜色
    char *name;//名字
    
    //重点：狗
    Dog *dog;
}
- (void)eat;
- (void)run;
- (void)printf;
- (void)liuDog;
- (void)weiDog;
@end

@implementation Student

- (void)eat
{
    //每吃一次，体重就加1
    weight += 1;
    NSLog(@"学生吃完这次后的体重是%f",weight);
}

- (void)run
{
    weight -= 1;
    NSLog(@"学生跑完这次后的体重是%f",weight);
}
- (void)liuDog;
{
    //让狗跑起来（调用狗的run方法）
    [dog run];
}
- (void)weiDog;
{
    //让狗吃东西（调用狗的eat方法）
    [dog eat];
}
-(void)printf
{
    NSLog(@"性别=%d，喜欢的颜色=%d，姓名=%s，生日=%d年%d月%d日",sex,favCololr,name,birthday.year,birthday.month,birthday.day);
}

@end

int main()
{
    Student *Student1 = [Student new];
    
    Dog *dog1 = [Dog new];
    dog1->curColor = ColorGreen;
    dog1->weight = 20;
    Student1->dog = dog1;
    
    [Student1 liuDog];
    [Student1 weiDog];
    return 0;
}

void test()
{
    Student *Student1 = [Student new];

    //体重
    Student1->weight = 50;
    
    //名字
    Student1->name = "Alrcly";
    
    //性别
    Student1->sex = SexMan;
    
    //生日
    Date d ={2011,9,10};
    Student1->birthday = d;
    
    /*
     Student1->birthday.year = 2011;
     Student1->birthday.month = 9;
     Student1->birthday.day = 10;
     */
    
    //喜欢的颜色
    Student1->favCololr =ColorBlack;
    
    
    [Student1 printf];
}