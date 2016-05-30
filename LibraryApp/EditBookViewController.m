//
//  EditBookViewController.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "EditBookViewController.h"

@interface EditBookViewController ()
@property (strong, nonatomic) IBOutlet UITextField *bookTitleTextField;
@property (strong, nonatomic) IBOutlet UITextField *bookAuthorTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfPagesTextField;

@end

@implementation EditBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@ is the title of bookToEdit", _bookToEdit.title);
    _bookTitleTextField.text = _bookToEdit.title;
    _bookAuthorTextField.text = _bookToEdit.author;
    NSString *numberOfPages = [NSString stringWithFormat:@"%@", _bookToEdit.numberOfPages];
    _numberOfPagesTextField.text = numberOfPages;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveUpdatedBookAction:(UIButton *)sender {
    _bookToEdit.title = _bookTitleTextField.text;
    _bookToEdit.author = _bookAuthorTextField.text;
    int numberOfPagesInt = [_numberOfPagesTextField.text intValue];
    NSNumber *numberOfPagesNum = [NSNumber numberWithInteger:numberOfPagesInt];
    _bookToEdit.numberOfPages = numberOfPagesNum;
    [self performSegueWithIdentifier:@"unwindToDetailViewSegue" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

@end
