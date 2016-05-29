//
//  LibraryTableViewController.h
//  LibraryApp
//
//  Created by Brandon Manson on 5/27/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Library.h"
#import "Book.h"


@interface LibraryTableViewController : UITableViewController

@property(strong, nonatomic)Library *library;

- (void)createLibrary;

@end
