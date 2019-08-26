//
//  DP21WebsiteFactory.m
//  DesignPatterns
//
//  Created by 小李 on 2019/8/26.
//  Copyright © 2019 小李. All rights reserved.
//

#import "DP21WebsiteFactory.h"
#import "DP21BlogWebsite.h"
#import "DP21NormalWebsite.h"

@interface DP21WebsiteFactory()
@property (nonatomic, strong) NSMutableDictionary *dict;

@end

@implementation DP21WebsiteFactory
- (DP21Website *)createWebsiteWithType:(DP21WebType)type {
    if (![self.dict.allKeys containsObject:[NSNumber numberWithInteger:type]]) {
        switch (type) {
            case DP21WebTypeBlog:{
                DP21BlogWebsite *blog = [[DP21BlogWebsite alloc] init];
                [self.dict setObject:blog forKey:[NSNumber numberWithInteger:type]];
                return blog;
            }
            case DP21WebTypeNormal:{
                DP21NormalWebsite *normal = [[DP21NormalWebsite alloc] init];
                [self.dict setObject:normal forKey:[NSNumber numberWithInteger:type]];
                return normal;
            }
            default:
                return [[DP21Website alloc] init];
        }
    }
    return self.dict[[NSNumber numberWithInteger:type]];
}

- (NSUInteger)getNumberofInstance {
    return self.dict.count;
}

- (NSMutableDictionary *)dict {
    if (!_dict) {
        self.dict = [NSMutableDictionary dictionary];
    }
    return _dict;
}




@end
