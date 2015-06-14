/*
 继承的使用场合
 1.当两个拥有相同属性和方法的时候，就可以将相同的东西抽取到一个父类中
 2.当A类拥有B类中了部分属性和方法，可以考虑让B类继承A类
 
 //继承:XX 是 XXX
 A
 {
    int _age;
    int _no;
 }
 
 B : A
 {
    int _weight;
 }
 
 //组合:XX 拥有 XXX
 A
 {
 int _age;
 int _no;
 }
 
 B
 {
 A *_a;
 int _weight;
 }
 
 
*/

@interface Score : NSObjedt
{
    int _cScore;
    int _ocScor;
}

@end

@implementation Score
@end


@interface Student : NSObjedt
{
    //组合
    Score *_Score;
//    int _cScore;
//    int _ocScor;
    int _age;
}
@end

@implementation Student
@end