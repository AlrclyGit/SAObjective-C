//
//  main.m
//  31_Category_分类
//
//  Created by SuzukiAlrcly on 15/6/17.
//  Copyright (c) 2015年 SuzukiAlrcly. All rights reserved.
//

//分类：可以给某个类扩充一些方法（不修改原来类的代码）
/*
 1.分类只能增加方法，不能增加成员变量
 2.分类方法实现中可以访问原来类中声明的成员变量
 3.分类可以重新实现类中的方法，但是会覆盖掉原来的方法，会导致原来的方法没法再使用
 4.方法调用的优先级：分类（最后参与编译的分类优先）——> 原来类 ——>父类
*/

/*声明
 @interface SNH48(分类名称)
 @end
 */

/*实现
 @implementation SNH48(分类名称）
 @end
 */

#import <Foundation/Foundation.h>
#import "SNH48.h"
#import "SNH48+Alrcly.h"

int main() {
    SNH48 *Chengshi = [[SNH48 alloc]init];
    [Chengshi test];
    [Chengshi Play];
    return 0;
}
