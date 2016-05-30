//
//  LibraryTableViewController.m
//  LibraryApp
//
//  Created by Brandon Manson on 5/27/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "LibraryTableViewController.h"
#import "DetailViewController.h"

@interface LibraryTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *booksTableView;

@end

@implementation LibraryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_library == nil) {
        [self createLibrary];
    }
    NSLog(@"Number of books in library: %lu", ([_library.books count]));
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Initializing Library

- (void)createLibrary {
    Book *bookOne = [[Book alloc]initWithTitle:@"Learning Objective-C" andAuthor:@"Hillegass & Ward" withNumberOfPages:[[NSNumber alloc]initWithInteger:357] andCheckinStatus:@"Checked In"];
    NSMutableArray *books = [[NSMutableArray alloc]initWithObjects:bookOne, nil];
    Library *library = [[Library alloc]initWithBooks:books];
    _library = library;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_library.books count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Book *bookInCell = [_library.books objectAtIndex:indexPath.row];
    cell.textLabel.text = bookInCell.title;
    return cell;
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}




- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_library removeBookFromLibrary:[_library.books objectAtIndex:indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        NSLog(@"NUmber of books in library: %lu", [_library.books count]);
        [_booksTableView reloadData];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *vc = [segue destinationViewController];
    NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
    vc.book = [_library.books objectAtIndex:selectedRowIndex.row];
    [vc setLabels];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
