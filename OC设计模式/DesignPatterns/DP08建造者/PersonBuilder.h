//
//  PersonBuilder.h
//  DesignPatterns
//
//  Created by 小李 on 2019/7/13.
//  Copyright © 2019 小李. All rights reserved.
//

#ifndef PersonBuilder_h
#define PersonBuilder_h

typedef NS_ENUM(NSUInteger, PersonType) {
    PersonTypeThin,
    PersonTypeFat,
};

@protocol PersonBuilder <NSObject>
- (void)buildHead;
- (void)buildBody;
- (void)buildArm;
- (void)buildLeg;
- (void)buildPerson;

@end

typedef id<PersonBuilder> PersonBuilder;
#endif /* PersonBuilder_h */
