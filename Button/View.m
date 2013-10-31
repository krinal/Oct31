//
//  View.m
//  Button
//
//  Created by Mark Meretzky on 10/25/13.
//  Copyright (c) 2013 Mark Meretzky. All rights reserved.
//

#import "View.h"
#import "ButtonAppDelegate.h"	//so we can mention touchUpInside:

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blueColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];

		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button

		button.frame = CGRectMake(
			b.origin.x + (b.size.width - s.width) / 2,
			b.origin.y + (b.size.height - s.height) / 2,
			s.width,
			s.height
		);

		button.backgroundColor = [UIColor blackColor];
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Star Wars Imperial March" forState: UIControlStateNormal];

		[button addTarget: [UIApplication sharedApplication].delegate
			action: @selector(touchUpInside:)
			forControlEvents: UIControlEventTouchUpInside
		];

		[self addSubview: button];
	}

	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
}
*/

@end
