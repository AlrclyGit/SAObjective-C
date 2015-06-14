
#import<Foundation/Foundation.h>

@interface Grade : NSObject
{
    int _cGrade;//Ｃ语言成绩
    int _ocGrade;//OC成绩
    int _sunGrade;//总分
    int _meanGrade;//平均分
}

- (void)setCGrade:(int)cScore;
- (int)cGrade;

- (void)setOcGrade:(int)ocScore;
- (int)ocGrade;

- (int)sunGrade;

- (int)meanGrade;
@end

@implementation Grade
- (void)setCGrade:(int)cScore
{
    _cGrade = cScore;
    _sunGrade = _cGrade + _ocGrade;
    _meanGrade = _sunGrade/2;
}
//监听成员变量的改变

- (int)cGrade
{
    return _cGrade;
}


- (void)setOcGrade:(int)ocScore
{
    _ocGrade =ocScore;
    _sunGrade = _cGrade + _ocGrade;
    _meanGrade = _sunGrade/2;
}
- (int)ocGrade
{
    return _ocGrade;
}


- (int)sunGrade
{
    return _sunGrade;
}


- (int)meanGrade
{
    return _meanGrade;
}


@end



int main()
{
    Grade *s =[Grade new];
    Grade *Great =[Great new];
    
    
    [s setOcGrade:90];
    [s setCGrade:100];
    [s ocGrade];

    
    int a =[s sunGrade];
    
    NSLog(@"总分:%d",a);
}