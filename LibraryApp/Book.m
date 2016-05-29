//
//  Book.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/26/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Book.h"

@implementation Book

- (id)initWithTitle:(NSString *)title andAuthor:(NSString *)author withNumberOfPages:(NSNumber *)numberOfPages andCheckinStatus:(NSString *)inLibrary {
    self = [super init];
    if (self) {
        _title = title;
        _author = author;
        _numberOfPages = numberOfPages;
        _inLibrary = inLibrary;
    }
    return self;
}

+ (id)initWithTitle:(NSString *)title andAuthor:(NSString *)author withNumberOfPages:(NSNumber *)numberOfPages andCheckinStatus:(NSString *)inLibrary {
    return [[self alloc]initWithTitle:title andAuthor:author withNumberOfPages:numberOfPages andCheckinStatus:inLibrary];
}

- (void)checkIntoLibrary {
    _inLibrary = @"Checked In";
}

- (void)checkOutOfLibrary {
    _inLibrary = @"Checked Out";
}


@end
