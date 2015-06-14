#import<Foundation/Foundation.h>

int mian()
{
    //三目运算符
    a > 10 ? a = 5 : a =8;
    
    //swithc(数字）循环
    switch (Number) {
        case 10:
            NSLog(@"Good!");
            break;
            
        default:
            NSLog(@"NO!");
            break;
    }
    
    
    //while(先判简单）循环
    while (i < 10) {
        i++;
        SNLog(@"%d",i )
    }
    
    
    //do-while(后判简单）循环
    do{
        i++;
        SNLog(@"%d",i )
    }while (i < 10);
    
    //for（高级）循环、if(高级判断）语法
    for (i = 1; i < 10; i++){
            if (i >= 5) {
                SNLog(@"聪明纯洁@d",i );
            }
            else if(i ==3){
                continue; //continue跳出循环
            }
            else if(i ==9){
                break;   //break结束循环
            }
            else{
                SNLog(@"仅仅聪明@d",i );
            }
        
    }
    return 0;
}