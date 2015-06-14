#import<Foundation/Foundation.h>
#import<math.h>

//点
@interface Point2D : NSObject
{
    double _x;
    double _y;
}

//x值的get和set声明
- (void)setX:(double)x;
- (double)X;

//y值的get和set声明
- (void)setY:(double)y;
- (double)Y;

//同时设置x和y声明
- (void)setX:(double)x andY:(double)y;

//计算跟其他点的距离声明
- (double)distanceWithOther:(Point2D *)other;

//计算两个点的距离声明
+ (double)distanceBetweenPoint1:(Point2D *)p1 andPonint2:(Point2D *)p2;
@end

@implementation Point2D

//x值的get和set实现
- (void)setX:(double)x
{
    _x = x;
}

- (double)X
{
    return _x;
}

//y值的get和set实现
- (void)setY:(double)y
{
    _y = y;
}

- (double)Y
{
    return _y;
}

//同时设置x和y实现
- (void)setX:(double)x andY:(double)y
{
    /*
     _x = y;
     _y = y;
     */
    
    /*
     self->_x = x;
     self->_y = y;
     */
    
    [self setX:x];
    [self setY:y];
}

//计算跟其他点的距离实现
- (double)distanceWithOther:(Point2D *)other
{
    return [Point2D distanceBetweenPoint1:self andPonint2:other];
}

//计算两个点的距离实现
+ (double)distanceBetweenPoint1:(Point2D *)p1 andPonint2:(Point2D *)p2
{
    //x1-x2
    double xDelta = [p1 X] - [p2 X];
    //(x1-x2)的平方
    double xDeltaPF = pow(xDelta,2);
    
    //y1-y2
    double yDelta = [p1 Y] - [p2 Y];
    //(y1-y2)的平方
    double yDeltaPF = pow(yDelta,2);
    
    //返回距离
    return sqrt(xDeltaPF + yDeltaPF);
}

@end
