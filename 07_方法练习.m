#import<Foundation/foundation.h>

@interface Car : NSObject
{
    @public
    int Speed;
}
-(int)compareSpeedWithOther:(Car *)other;

@end

N

@implementation Car
-(int)compareSpeedWithOther:(Car *)other
{
    // speed
    //other->Speed
    //返回当前这辆车和other这辆车的速度差距
    return Speed - other->Speed;
    
}
@end


int main()
{
    Car *car1 = [Car new];
    car1->Speed = 300;
    
    Car *car2 = [Car new];
    car2->Speed = 250;
    
    int a =[car2 compareSpeedWithOther:car1];
    
    NSLog(@"%d",a);
    return 0;

}