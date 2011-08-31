//
//  NormlizePNGViewController.m
//  NormlizePNG
//
//  Created by Aladdin on 10/7/10.
//  Copyright 2010 innovation-works. All rights reserved.
//

#import "NormlizePNGViewController.h"

@implementation NormlizePNGViewController
- (void)loadAllBundleImage{
    NSArray * imagesPath = [NSBundle pathsForResourcesOfType:@"png" inDirectory:[[NSBundle mainBundle]bundlePath]];
	for (NSString * a in imagesPath) {
		NSData * idata = UIImagePNGRepresentation([UIImage imageWithContentsOfFile:a]);
		[idata writeToFile:[NSString stringWithFormat:@"%@%@",kSAVEPATH,[a lastPathComponent]] atomically:YES];
	}
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadAllBundleImage];
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Convert Done!" 
                               message:[NSString stringWithFormat:@"Check your image in %@",kSAVEPATH]
                              delegate:nil 
                     cancelButtonTitle:@"Okay" 
                     otherButtonTitles: nil];
    [alert show];
    [alert release];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
