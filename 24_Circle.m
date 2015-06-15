#import<Foundation/Foundation.h>
#import<math.h>

//圆
@interface Circle : NSObject
{
    //半径
    double _radius;
    //圆心
    Point2D *_Point;
}
//半径的get和set方法声明
- (void)setRadius:(double)radius;
- (double)radius;

//圆心的get和set方法声明
- (void)setPoint:(Point2D *)point;
- (Point2D *)point;

//判断跟其他圆是否重叠（重叠返回Yes，否则返回NO）
//返回值是BOOL类型的，方法名一般以is开头
- (BOOL)isInteractWithOther:(Circle *)c;

//判断两个圆是否重叠（重叠返回Yes，否则返回NO）
+ (BOOL)isInteractBetweenCircle1:(Circle *)c1 andCircle2:(Circle *)c2;
@end


@implementation Circle
//半径的get和set方法现实
- (void)setRadius:(double)radius
{
    _radius = radius;
}
- (double)radius
{
    return _radius;
}

//圆心的get和set方法现实
- (void)setPoint:(Point2D *)point
{
    _Point = point;
}
- (Point2D *)point
{
    return _Point;
}

//判断跟其他圆是否重叠（重叠返回Yes，否则返回NO）
//返回值是BOOL类型的，方法名一般以is开头
- (BOOL)isInteractWithOther:(Circle *)c
{
    return [Circle isInteractBetweenCircle1:self andCircle2:c];
}

//判断两个圆是否重叠（重叠返回Yes，否则返回NO）
+ (BOOL)isInteractBetweenCircle1:(Circle *)c1 andCircle2:(Circle *)c2
{
    //如果两个圆心的距离 < 两个圆的半径和 ，重叠
    //如果两个圆心的距离 >= 两个圆的半径和 ， 不重叠
    Point2D *p1 = [c1 point];
    Point2D *p2 = [c2 point];
    
    //圆心之间的距离
    double distance = [Point2D distanceBetweenPoint1:p1 andPonint2:p2];
    
    //半径和
    double radiusSum = [c1 radius] + [c2 radius];
    
    //比较
    return distance < radiusSum;
}
@end
