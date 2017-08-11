//
//  DIYModel.h
//  testModel
//
//  Created by Yang Li on 2017/8/11.
//  Copyright © 2017年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>



#pragma mark - bannermodel
@interface BannerModel : NSObject

@property (nonatomic,copy)NSString * url;
@property (nonatomic,copy)NSString * pic;
@property (nonatomic,copy)NSString * idd;

@end

#pragma mark - QWER Model
@interface QWERModel : NSObject

@property (nonatomic,copy)NSString * tm;
@property (nonatomic,copy)NSString * hn;


@end

#pragma mark - Class Model
@interface ClassModel : NSObject

@property(nonatomic,copy)NSString *cba;
@property(nonatomic,copy)NSString *tv;
@property(nonatomic,copy)NSString *tbq;

@end
#pragma mark - shop model
@interface ShopModel : NSObject
@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *idd;
@end

@interface DicContentModel : NSObject
@property(nonatomic,strong)NSArray * classArr;
@property(nonatomic,strong)QWERModel * qwermodel;
@property(strong,nonatomic)NSArray * sbArr;

@end


@interface BigModel : NSObject

@property(nonatomic,strong)BannerModel * banner;
@property(nonatomic,strong)NSArray * list;
@property(nonatomic,strong)DicContentModel * dictCont;
@property(nonatomic,copy)NSString * det;
@property(nonatomic,copy)NSString * ha;



@end



