//
//  main.m
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChildManager.h"
#import "ExternalInterceptor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BaseManager * manager = [[ChildManager alloc]init];
        [manager  run];
        
        ExternalInterceptor *interceptor = [[ExternalInterceptor alloc] init];
        BaseManager * managerWithEI = [[ChildManager alloc]initWithInterceptor:interceptor];
        [managerWithEI  run];
        
    }
    return 0;
}
