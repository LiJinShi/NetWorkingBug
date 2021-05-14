//
//  ViewController.m
//  NetWorkingBug
//
//  Created by buer on 2021/5/14.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "XMNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestData];
}


- (void)requestData {
    [XMCenter sendRequest:^(XMRequest * _Nonnull request) {
        request.url = @"https://l10n-pro.huobiasia.club/-/x/pro/netinfo";
        request.httpMethod = kXMHTTPMethodGET;
        request.requestSerializerType = kXMRequestSerializerJSON;
        request.responseSerializerType = kXMResponseSerializerJSON;
        
    } onSuccess:^(id  _Nullable responseObject) {
        
        NSLog(@"response success == %@", responseObject);
        
    } onFailure:^(NSError * _Nullable error) {
        NSLog(@"response error == %@", error);
    }];
}

@end
