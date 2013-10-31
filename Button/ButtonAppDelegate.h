//
//  ButtonAppDelegate.h
//  Button
//
//  Created by Mark Meretzky on 10/25/13.
//  Copyright (c) 2013 Mark Meretzky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class View;

@interface ButtonAppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	SystemSoundID sid;
}

- (void) touchUpInside: (id) sender;
@property (strong, nonatomic) UIWindow *window;
@end
