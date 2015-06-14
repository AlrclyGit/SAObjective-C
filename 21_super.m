/*
 僵尸
 跳跃僵尸、舞王僵尸、铁桶僵尸
 */

#import<Foundation/Foundation.h>

/*
 super的作用
 1.直接调用父类中的某个方法
 2.super处在对象方法中，那么就会调用父类的对象方法
   super处在类方法中，那么就会调用父类的类方法
 
 3.使用场合：了类重写父类的方法时想你保留父类的方法
 */

//僵尸
@interface Zoombie : NSObject
- (void)walk;

+ (void)test;
- (void)test;

@end

@implementation Zoombie
- (void)walk
{
    NSLog(@"往前挪两步*********");
}

+ (void)test;
{
    NSLog(@"Zoombie+test");
}
- (void)test;
{
    NSLog(@"Zoombie-test");
}
@end

//跳跃僵尸
@interface JumpZoombie : Zoombie
+ (void)haha;
- (void)haha;
@end

@implementation JumpZoombie

+ (void)haha
{
    [super test];
}

- (void)haha
{
    [super test];
}

- (void)walk
{
    //跳两下
    NSLog (@"跳两下");
    
    //走两个(直接调用父类的walk方法）
    [super walk];
    //-NSLog(@"往前挪两步-----");
}

@end


int main()
{
    [JumpZoombie haha];
    //JumpZoombie *jz = [JumpZoombie new];
    
    //[jz walk];
    return 0;
}