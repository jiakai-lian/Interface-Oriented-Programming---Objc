//
//  BaseManager.h
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerProtocol.h"
#import "Interceptor.h"

@interface BaseManager : NSObject

@property (nonatomic, weak) id<ManagerProtocol> child;
@property (nonatomic, weak) id<Interceptor> interceptor;

#pragma mark - Initializer
- (instancetype)init NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithInterceptor:(id<Interceptor>)interceptor;

#pragma mark - Public Methods
- (void)run;
@end
