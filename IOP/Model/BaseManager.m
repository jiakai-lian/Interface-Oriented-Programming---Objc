//
//  BaseManager.m
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import "BaseManager.h"

@implementation BaseManager

#pragma mark - Initializer
- (instancetype)init
{
    if(self = [super init])
    {
        if([self conformsToProtocol:@protocol(ManagerProtocol)])
        {
                _child = (id<ManagerProtocol>)self;
        }
        
        if([self conformsToProtocol:@protocol(Interceptor)])
        {
            _interceptor = (id<Interceptor>)self;
        }
    }
    
    return self;
}

- (instancetype)initWithInterceptor:(id<Interceptor>)interceptor
{
    self = [self init];
    
    _interceptor = interceptor;
    
    return self;
    
}

#pragma mark - Public Methods
- (void)run
{
    [self.interceptor willRun];
    
    [self.child APIName];
    
    if([self.child respondsToSelector:@selector(optionalMethod)])
    {
        [self.child optionalMethod];
    }
    
    [self.interceptor didRun];
}

@end
