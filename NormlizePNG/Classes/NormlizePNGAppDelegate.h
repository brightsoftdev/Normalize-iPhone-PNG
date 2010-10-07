//
//  NormlizePNGAppDelegate.h
//  NormlizePNG
//
//  Created by Aladdin on 10/7/10.
//  Copyright 2010 innovation-works. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NormlizePNGViewController;

@interface NormlizePNGAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NormlizePNGViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NormlizePNGViewController *viewController;

@end

