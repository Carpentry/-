//
//  Mark.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef Mark_h
#define Mark_h

#import <UIKit/UIKit.h>

@protocol Mark <NSObject>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSUInteger count;
@property (nonatomic, strong, readonly) id<Mark> lastClild;

- (id)initWithLocation:(CGPoint)location;
- (id)copy;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

@end


#endif /* Mark_h */
