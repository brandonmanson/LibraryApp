//
//  Library.h
//  LibraryApp
//
//  Created by Brandon Manson on 5/26/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Library : NSObject

@property(strong, nonatomic)NSMutableArray *books;

- (void)removeBookFromLibrary:(Book *)book;
- (void)addBookToLibrary:(Book *)book;
- (id)initWithBooks:(NSMutableArray *)books;
+ (id)initWithBooks:(NSMutableArray *)books;

@end
