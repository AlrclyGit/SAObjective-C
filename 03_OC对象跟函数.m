
#import<Foundation/Foundation.h>

@interface Car : NSObject

{//成员变量
    @public
    int wheels;
    int speed;

}

- (void)run;
@end

@implementation car

- (void)run;
{
    NSLog(@"%dw个轮子，速度位%dkm/h的车子跑起来"，wheels,speed);
}

@end

void test(int W,int S)
{
    w = 20;
    s = 200;
}

void test1(Car *newC)
{
    newC->wheels = 5;
}

void test2(Car *nweC)
{
    Car *Car2 = [Car newC];
    Car2->wheels = 5;
    Car2->speed = 300;
    
    newC = Car2;
    newC->wheels =6;
}


int main()
{
    Car *Car1 = [Csr nwe];
    Car1->wheels = 4;
    car1->speed = 250;
    
    //test(Car1->wheels,Car1->speed);
    //test1(Car1   );
    test2(Car1);
    
    [Car1 run];
    return 0;
}