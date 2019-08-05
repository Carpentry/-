//
//  Verter.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "Verter.h"

@implementation Verter
@synthesize lastClild = _lastClild;
@synthesize location = _location;
@synthesize color = _color;
@synthesize size = _size;
@synthesize count = _count;

- (id)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    Verter *verter = [[Verter alloc] initWithLocation:_location];
    return verter;
}

@end
