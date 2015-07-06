一、计数器的基本操作
1> retain : +1
2> release : -1
3> retainCount: 获得计数器

二、set方法的内存管理
1> set方法的实现
- （void）setCar:(Car*)car{
    if(_car != Car){
        [_car release];
        _car = [car release];
    }
}
2> dealloc方法的实现(不要直接调用dealloc)
- (void)dealloc{
    [_car release];
    [super dealloc];
}

三、@property参数
1>OC对象类型
@property (nonatomic,retain) 类名* 属性名；
@property (nonatomic,retain) Car *car;
@property (nonatomic,retain) id car;

//被retain过的属性，必须在dealloc方法中release属性
- （void）dealloc
{
    [car release];
    [super dealloc];
}
2>非OC对象类型（int\float\enum\struct）
@property (nonatomic,assign) 类型名称 属性名；
@property (nonatomic,assign) int age;

四、autorelease
1、系统自觉方法中，如果不包含alloc、new、copy，那么这些方法返回的对象都是已经artorelease过的

2、开发中经常写一些类方法快速创建一个autorelease的对象
*创建对象的时候不要直接使用类名，用self