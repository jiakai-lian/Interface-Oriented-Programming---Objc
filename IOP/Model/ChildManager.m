//
//  ChildManager.m
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import "ChildManager.h"

@implementation ChildManager

#pragma mark - ManagerProtocol
- (void) APIName
{
    NSLog(@"APIName");
}

#pragma mark - Interceptor
- (void)willRun
{
    NSLog(@"willRun");
}

- (void)didRun
{
    NSLog(@"didRun");
}

@end
