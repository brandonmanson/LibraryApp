//
//  Book.h
//  LibraryApp
//
//  Created by Brandon Manson on 5/26/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property(strong, nonatomic)NSString *title;
@property(strong, nonatomic)NSString *author;
@property(strong, nonatomic)NSNumber *numberOfPages;
@property(strong, nonatomic)NSString *inLibrary;

-(id)initWithTitle:(NSString *)title andAuthor:(NSString *)author withNumberOfPages:(NSNumber *)numberOfPages andCheckinStatus:(NSString *)inLibrary;
+(id)initWithTitle:(NSString *)title andAuthor:(NSString *)author withNumberOfPages:(NSNumber *)numberOfPages andCheckinStatus:(NSString *)inLibrary;
-(void)checkOutOfLibrary;
-(void)checkIntoLibrary;
-(void)updateBookWithTitle:(NSString *)title andAuthor:(NSString *)author withNumberOfPages:(NSNumber *)numberOfPages andCheckInStatus:(NSString *)checkInStatus;

@end
