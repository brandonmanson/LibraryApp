//
//  Library.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/26/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Library.h"

@implementation Library

- (id)initWithBooks:(NSMutableArray *)books {
    self = [super init];
    if (self) {
        _books = books;
    }
    return self;
}

+ (id)initWithBooks:(NSMutableArray *)books {
    return [[self alloc]initWithBooks:books];
}

- (void)addBookToLibrary:(Book *)book {
    [_books addObject:book];
}

- (void)removeBookFromLibrary:(Book *)book {
    [_books removeObject:book];
}

@end
