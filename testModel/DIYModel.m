//
//  DIYModel.m
//  testModel
//
//  Created by Yang Li on 2017/8/11.
//  Copyright © 2017年 Yang Li. All rights reserved.
//

#import "DIYModel.h"


@implementation ShopModel
//自定义属性映射
+(NSDictionary*)modelCustomPropertyMapper{

    return @{@"idd":@"id"};
    
}
@end
@implementation BannerModel
//自定义属性映射
+(NSDictionary*)modelCustomPropertyMapper{
    
    return @{@"idd":@"id"};
    
}

@end
@implementation QWERModel

//自定义属性映射
+(NSDictionary*)modelCustomPropertyMapper{
    
    return @{@"hn":@"HN",
             @"tm":@"TM"
             };
    
}

@end

@implementation ClassModel

//自定义属性映射
+(NSDictionary*)modelCustomPropertyMapper{
    
    return @{@"cba":@"CBA",
             @"tv":@"TV",
             @"tbq":@"TBQ"
             };
}

@end

@implementation DicContentModel

//自定义属性映射
+(NSDictionary*)modelCustomPropertyMapper{
    
    return @{@"classArr":@"CLASS",
             @"sbArr":@"SB",
             @"qwermodel":@"QWER"};
    
}
+ (NSDictionary *)modelContainerPropertyGenericClass{

    return @{@"classArr":[ClassModel class],
             @"qwerModel":[QWERModel class]
             // @"sbArr":[NSString class], /// 如果这样写了 只会返回数组中的string类型 其他的不会返回

             };
}

@end
@implementation BigModel

+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{@"DicContentModel":@"dictCont"};
}
+ (NSDictionary *)modelContainerPropertyGenericClass{

    return @{@"banner":[BannerModel class],
             @"list":[ShopModel class],
             @"dictCont":[DicContentModel class]
             };
}

@end
