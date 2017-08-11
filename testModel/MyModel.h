//
//  MyModel.h
//  testModel
//
//  Created by Yang Li on 2017/8/11.
//  Copyright © 2017年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@class lee_address,lee_hobby;
@interface MyModel : NSObject


@property (nonatomic, copy) NSString *gender;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, strong) NSArray<lee_hobby *> *hobby;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *height;

@property (nonatomic, strong) lee_address *addr;

@end
@interface lee_address : NSObject

@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *code;

@end

@interface lee_hobby : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *code;

@end

