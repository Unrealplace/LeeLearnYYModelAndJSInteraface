//
//  ViewController.m
//  testModel
//
//  Created by Yang Li on 2017/8/11.
//  Copyright © 2017年 Yang Li. All rights reserved.
//

#import "ViewController.h"
#import "YYModel.h"
#import "DIYModel.h"

#import "testH5ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    NSDictionary *shopone = @{@"name":@"商店一",
                              @"id":@"id11111"};
    NSDictionary *shoptwo = @{@"name":@"商店二",
                              @"id":@"id22222"};
    NSDictionary *shopthree = @{@"name":@"商店三",
                              @"id":@"id22222"};
    
    NSArray *listArr = @[shopone,shoptwo,shopthree];
    
    NSDictionary *banner = @{@"url":@"urllllll",
                             @"pic":@"picccccc",
                             @"id":@"banner33333"};
    
    NSDictionary *dictContArr = @{@"CLASS":@[
                                          @{
                                              @"CBA":@"CBA1",
                                              @"TV":@"CCTV1",
                                              @"TBQ":@"TBQ1"
                                              }
                                          ],
                                  @"QWER":@{
                                          @"TM":@"TM1",
                                          @"HN":@"HN1"
                                          },
                                  @"SB":@[@"SB1",
                                          @"SB2",
                                          @"SB2"
                                          ]
                                  };
    
    
    
//    {
//        banner =     {
//            id = banner33333;
//            pic = picccccc;
//            url = urllllll;
//        };
//        det = detttt;
//        dictCont =     {
//            CLASS =         (
//                             {
//                                 CBA = CBA1;
//                                 TBQ = TBQ1;
//                                 TV = CCTV1;
//                             }
//                             );
//            QWER =         {
//                HN = HN1;
//                TM = TM1;
//            };
//            SB =         (
//                          SB1,
//                          SB2,
//                          SB2
//                          );
//        };
//        ha = haaaaaaa;
//        list =     (
//                    {
//                        id = id11111;
//                        name = "\U5546\U5e97\U4e00";
//                    },
//                    {
//                        id = id22222;
//                        name = "\U5546\U5e97\U4e8c";
//                    },
//                    {
//                        id = id22222;
//                        name = "\U5546\U5e97\U4e09";
//                    }
//                    );
//    }
    
    
    
    NSDictionary *bigDic = @{@"banner":banner,
                             @"list":listArr,
                             @"det":@"detttt",
                             @"ha":@"haaaaaaa",
                             @"dictCont":dictContArr
                             };
    
    
    NSLog(@"%@",bigDic);
    
    
    BigModel * bigModel = [[BigModel alloc] init];
    [bigModel yy_modelSetWithDictionary:bigDic];
    

    
#pragma mark - 避免杂乱 只输出一个数据
    //MARK:banner 数据输出
    NSLog(@"banner--%@",bigModel.banner.url);
    
    //MARK:listArr 数据输出
    NSLog(@"listArr--%@",bigModel.list);
    for (ShopModel *shopModel in bigModel.list) {
        NSLog(@"shopModel--%@",shopModel.name);
    }
    
    //MARK:dictContArr 数据输出
    NSLog(@"dictContArr--%@",bigModel.dictCont);
    
    NSLog(@"hn--%@",bigModel.dictCont.qwermodel.hn);
    
    for (ClassModel *classModel in bigModel.dictCont.classArr) {
        NSLog(@"classModel--%@",classModel.tbq);
    }
    NSLog(@"sbArr--%@",bigModel.dictCont.sbArr);
    
    
    
    
    
    
}

- (IBAction)btnClick:(id)sender {
    
    [self.navigationController pushViewController:[testH5ViewController new] animated:YES];
    
}


@end
