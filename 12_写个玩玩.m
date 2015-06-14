#import <Foundation/Foundation.h>

@interface Number : NSObject
{
    NSString *str
}
-(void)singNumber:(int)NumberS;

@end

@implementation Number

-(void)singNumber:(int)NumberS
{
    switch (NumberS) {
        case 0:
            str = @"零";
            break;
        case 1:
            str = @"一";
            break;
        case 2:
            str = @"二";
            break;
        case 3:
            str = @"三";
            break;
        case 4:
            str = @"四";
            break;
        case 5:
            str = @"五";
            break;
        case 6:
            str = @"六";
            break;
        case 7:
            str = @"七";
            break;
        case 8:
            str = @"八";
            break;
        case 9:
            str = @"九";
            break;
        default:
            str = @"无法判定";
            break;
    }
    NSLog(@"%d",NumberS);
}

@end

int main()
{
    Number *p = [Number new];
    
    [p singNumber:5];
}