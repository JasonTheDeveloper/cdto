//
//  CD2Hyper.m
//  hyper
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import "CD2Hyper.h"

@implementation CD2Hyper

- (BOOL)openTermWindowForPath:(NSString *)aPath {
    @try {
        NSString *hyperAbsolutePath;
        hyperAbsolutePath = [[NSWorkspace sharedWorkspace] absolutePathForAppBundleWithIdentifier:@"co.zeit.hyper"];

        if (hyperAbsolutePath) {
            [[NSWorkspace sharedWorkspace] openFile:[aPath stringByExpandingTildeInPath]
                                    withApplication:hyperAbsolutePath
                                      andDeactivate:YES];
        }

    } @catch (id test) {
        return NO;
    }
    return YES;
}

@end
