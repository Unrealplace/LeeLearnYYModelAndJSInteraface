//
//  LeeModel.h
//  testModel
//
//  Created by Yang Li on 2017/8/11.
//  Copyright © 2017年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@class leeObj;

@interface LeeModel : NSObject

 
@property (nonatomic, strong) NSArray<NSNumber *> *array;

@property (nonatomic, assign) NSInteger number;

@property (nonatomic, strong) leeObj *object;

@property (nonatomic, copy) NSString *string;

@property (nonatomic, assign) BOOL boolean;

@property (nonatomic, copy) NSString *null;


@end

@interface leeObj : NSObject

@property (nonatomic, copy) NSString *a;

@property (nonatomic, copy) NSString *c;

@property (nonatomic, copy) NSString *e;

@end

