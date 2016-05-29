//
//  DetailViewController.h
//  LibraryApp
//
//  Created by Brandon Manson on 5/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface DetailViewController : UIViewController

@property(strong, nonatomic)Book *book;

- (void)setLabels;

@end
