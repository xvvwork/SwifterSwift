// SwifterSwift.h - Copyright 2021 SwifterSwift

#import <Foundation/Foundation.h>
#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_MAC
#import <Cocoa/Cocoa.h>
#elif TARGET_OS_WATCH
#import <WatchKit/WatchKit.h>
#endif


//! Project version number for SwifterSwift.
FOUNDATION_EXPORT double SwifterSwiftVersionNumber;

//! Project version string for SwifterSwift.
FOUNDATION_EXPORT const unsigned char SwifterSwiftVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <SwifterSwift/PublicHeader.h>
