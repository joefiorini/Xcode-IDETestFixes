//
//  Xcode4_4Fixups.m
//  Xcode4_4Fixups
//
//  Created by Martijn Thé on 2/23/12.
//  Copyright (c) 2012 martijnthe.nl All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <objc/objc-runtime.h>


NSComparisonResult localizedStandardCompare(id _self, SEL cmd, id other);
NSComparisonResult localizedStandardCompare(id _self, SEL cmd, id other) {
    return [[_self identifier] localizedStandardCompare:[other identifier]];
}

@interface XcodeFixups : NSObject @end
@implementation XcodeFixups

+ (void)pluginDidLoad:(NSBundle *)plugin {
    NSLog(@"Xcode4_4Fixups_init...");
    NSLog(@"Fixing -[IDETest localizedStandardCompare:] crashes...");
    Class IDETestClass = NSClassFromString(@"IDETest");
    if (IDETestClass) {        
        BOOL didAdd = class_addMethod(IDETestClass, @selector(localizedStandardCompare:), (IMP)localizedStandardCompare, "i@:@");
        if (didAdd) {
            NSLog(@"Added -[IDETest localizedStandardCompare:] method implementation.");
        } else {
            NSLog(@"Failed.");
        }
    } else {
        NSLog(@"Class IDETest not (yet) loaded.");
    }
}

@end