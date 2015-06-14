#import <Foundation/Foundation.h>

@interface   Person : NSObject

{
    @public
    int age;
    double weight;
}


- (void)walk;
- (void)eat;

@end


@implementation Person

-（void）walk
{
    NSLog(@"%d岁,%f公斤的人走了一段路",age,weight);
}

- (void)eat
{
    NSLog(@"%d岁,%f公斤的人在吃东西",age,weight);
}

@end


int main()
{
    
    //在使用类创建对象之前，会将类加载进内存。 
    Person *Person1 = [Person new];
    person1->age = 20;
    person1->weight = 40;
    
    [Person1 eat];
    [Person1 walk];
    
    Person *Person2[Person new];
    Person2 ->age = 30;
    Person2 ->weight = 60;
    
    [Person2 eat];
    [Person2 walk];
    /*
    person *person2 = [person new];
    person2->age = 30;
    person2->weight =50;
    
    Person1 = Person2;
    
    Person1->age = 40;
    
    [Person2 walk];
     */
    
    /*
    Person *Person1 = [Person new];
    Person1->age = 20;
    
    Person *Person2 = [Person new];
    Person2->weight = 50.0;
    
    [Person1 walk];
     */
    
    /*
    Person *Person1 = [Person new];
    Person1->age = 20;
    Person1->weight =50.0;
    [Person1 walk];
    
    Person *Person2 = [Person new];
    Person2->age = 30;
    Person2->weight =60.0;
    [Person2 walk];
    */
    return 0;
}