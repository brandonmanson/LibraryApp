//
//  DetailViewController.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "DetailViewController.h"
#import "EditBookViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *bookTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfPagesLabel;
@property (strong, nonatomic) IBOutlet UILabel *checkedInLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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


#pragma mark - Navigation

- (IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
    if ([segue.identifier isEqualToString:@"unwindToDetailViewSegue"]) {
        EditBookViewController *editBookVC = (EditBookViewController *)segue.sourceViewController;
        _book.title = editBookVC.bookToEdit.title;
        _book.author = editBookVC.bookToEdit.author;
        _book.numberOfPages = editBookVC.bookToEdit.numberOfPages;
        [self setLabels];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"editBookSegue"]) {
        EditBookViewController *vc = [segue destinationViewController];
        vc.bookToEdit = _book;
    }
}


@end
