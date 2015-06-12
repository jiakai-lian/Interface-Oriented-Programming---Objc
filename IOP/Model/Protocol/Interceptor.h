//
//  Interceptor.h
//  IOP
//
//  Created by jiakai lian on 13/06/2015.
//  Copyright (c) 2015 jiakai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Interceptor <NSObject>

- (void) willRun;

- (void) didRun;

@end
