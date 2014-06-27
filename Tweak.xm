//
//  Tweak.xm
//  NoRotationLockItem
//
//  Created by Timm Kandziora on 27.06.14.
//  Copyright (c) 2014 Timm Kandziora. All rights reserved.
//

#import <substrate.h>

@interface SBStatusBarStateAggregator : NSObject
+ (id)sharedInstance;
- (void)_updateRotationLockItem;
- (BOOL)_setItem:(int)item enabled:(BOOL)enabled;
@end

%hook SBStatusBarStateAggregator

-(void)_updateRotationLockItem
{
	%orig;
	[[%c(SBStatusBarStateAggregator) sharedInstance] _setItem:17 enabled:NO];
}

%end
