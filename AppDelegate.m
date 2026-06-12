
#import "AppDelegate.h"

#import <appkit/appkit.h>


@implementation AppDelegate

- (void)appDidInit:sender {
	NXSetRect(&windowFrame, 0.0, 0.0, 200.0, 200.0);
	
	window = [[Window alloc] initContent:&windowFrame
								   style:NX_RESIZEBARSTYLE
								 backing:NX_BUFFERED
							  buttonMask:NX_MINIATURIZEBUTTONMASK | NX_CLOSEBUTTONMASK
								   defer:NO];
	[window setTitle:"Window"];
	[window center];
	[window display];
	[window makeKeyAndOrderFront:nil];
	
	appMenu = [[Menu alloc] initTitle:"Window"];
	[appMenu addItem:"Quit"
			  action:@selector(terminate:)
	   keyEquivalent:'q'];
	
	[NXApp setMainMenu:appMenu];
}

@end
