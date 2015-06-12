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
#import "ChildMangerWithOptionalMethods.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //no optional methods
        BaseManager * manager = [[ChildManager alloc]init];
        [manager  run];
        
        //with optional methods
        BaseManager * managerWithOM = [[ChildMangerWithOptionalMethods alloc]init];
        [managerWithOM  run];
        
        //with external interceptor
        ExternalInterceptor *interceptor = [[ExternalInterceptor alloc] init];
        BaseManager * managerWithEI = [[ChildManager alloc]initWithInterceptor:interceptor];
        [managerWithEI  run];
        
        
        
    }
    return 0;
}
