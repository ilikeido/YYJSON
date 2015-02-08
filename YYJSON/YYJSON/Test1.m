//
//  Test1.m
//  YYJSON
//
//  Created by Ivan Chua on 14-7-6.
//  Copyright (c) 2014年 Ivan Chua. All rights reserved.
//

#import "Test1.h"
#import "YYJSONHelper.h"
@implementation Test1

+ (void)initialize
{
    [super initialize];
    [self bindYYJSONKey:@"data.country" toProperty:@"country"];
    [self bindYYJSONKey:@"data.subdata" toProperty:@"subdata.Data"];
    [self bindYYJSONKey:@"data.subdata.country" toProperty:@"miguo"];
}

+ (Class)classForYYPropertieArrayKey:(NSString *)key{
    if ([key isEqual:@"locations"]) {
        return [Location class];
    }
    return nil;
}

@end

@implementation Data

@end

@implementation Location

@end

@implementation Person

@end