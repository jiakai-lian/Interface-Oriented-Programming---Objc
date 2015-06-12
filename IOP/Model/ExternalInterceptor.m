//
//  ExternalInterceptor.m
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import "ExternalInterceptor.h"

@implementation ExternalInterceptor

#pragma mark - Interceptor
- (void)willRun
{
    NSLog(@"ExternalInterceptor willRun");
}

- (void)didRun
{
    NSLog(@"ExternalInterceptor didRun");
}

@end
