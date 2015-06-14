#import<Foundation/Foundation.h>
#import<math.h>

int main()
{
    //圆对象1
    Circle *c1 = [Circle new];
    
    //设置半径
    [c1 setRadius:5];
    //创建圆心对象
    Point2D *p1 = [Point2D new];
    [p1 setX:10 andY:15];
    
    // 先设置圆心
    [c1 setPoint:p1];
    [[c1 point] setX:15];
    
    //c1 半径：5 圆心：（15，15）
    
    //圆对象2
    Circle *c2 = [Circle new];
    //设置圆的半径
    [c2 setRadius:2];
    // 创建圆心对象
    Point2D *p2 = [Point2D new];
    [p2 setX:12 andY:19];
    //设置圆心
    [c2 setPoint:p2];
    
    //c2 半径：2 圆心：（12，19）
    
    
    BOOL b1 = [Circle isInteractBetweenCircle1:c1 andCircle2:c2];
    
    NSLog(@"%d",b1);
    
    /*
     Point2D *p1 = [Point2D new];
     [p1 setX:10 andY:15];
     
     Point2D *p2 = [Point2D new];
     [p2 setX:13 andY:10];
     
     double SSS = [Point2D distanceBetweenPoint1:p1 andPonint2:p2];
     double SSZ = [p1 distanceWithOther:p2];
     
     NSLog(@"%f",SSS);
     NSLog(@"%f",SSZ);
     */
    return 0;
}