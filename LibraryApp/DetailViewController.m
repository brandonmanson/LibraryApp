//
//  DetailViewController.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *bookTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfPagesLabel;
@property (strong, nonatomic) IBOutlet UILabel *checkedInLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Book title is %@", _book.title);
    [self setLabels];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setLabels {
    _bookTitleLabel.text = _book.title;
    _authorLabel.text = _book.author;
    _checkedInLabel.text = _book.inLibrary;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
