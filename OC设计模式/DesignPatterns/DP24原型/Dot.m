//
//  Dot.m
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#import "Dot.h"

@interface Dot()
@property (nonatomic, copy) NSMutableArray *children;
@end

@implementation Dot
@synthesize lastClild = _lastClild;
@synthesize location = _location;
@synthesize color = _color;
@synthesize size = _size;
@synthesize count = _count;

- (id)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        _location = location;
        _children = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }
}

- (NSUInteger)count {
    return _children.count;
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (_children.count <= index) {
        return nil;
    }
    return _children[index];
}

- (id<Mark>)lastClild {
    return [self.children lastObject];
}

- (id)copyWithZone:(NSZone *)zone {
    Dot *dot = [[Dot alloc] initWithLocation:_location];
    dot.size = _size;
    dot.color = _color;
    for (id<Mark> mark in _children) {
        id<Mark> childCopy = [mark copy];
        [dot addMark:childCopy];
    }
    return dot;
}

@end
