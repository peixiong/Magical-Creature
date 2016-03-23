//
//  MagicalCreature.m
//  MagicalCreature
//
//  Created by Pei Xiong on 3/22/16.
//  Copyright © 2016 Pei Xiong. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature


-(instancetype)initWithName:(NSString *)name{
    self =[super init];
    if (self) {
        self.name = name;
    }
    return self;
}

@end