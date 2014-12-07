//
//  RepViewController.m
//  iCongress
//
//  Created by Robert Gordan on 12/3/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import "RepViewController.h"
#import "BillCell.h"

@interface RepViewController () <BillCellDelegate>{
    
}
@property (nonatomic, strong) NSMutableArray *cellsCurrentlyEditing;
@property NSMutableArray* objects;
@end

@implementation RepViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //placeholder code
    //1
    _objects = [NSMutableArray array];
    
    //2
    NSInteger numberOfItems = 30;
    for (NSInteger i = 1; i <= numberOfItems; i++) {
        NSString *item = [NSString stringWithFormat:@"Item #%ld", (long)i];
        [_objects addObject:item];
    }
    
    self.tableView.layoutMargins = UIEdgeInsetsZero;
    [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //size table header appropriately
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight/4)];
    self.tableView.tableHeaderView = headerView;
    
    //add representative's image
    UIImageView* repImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"frank-underwood.jpg"]];
    
    repImage.frame = CGRectMake(0, 0, screenWidth/2, screenHeight/4);
    [self.tableView.tableHeaderView addSubview:repImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BillCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    NSString *item = _objects[indexPath.row];
    cell.itemText = item;
    cell.delegate = self;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if ([self.cellsCurrentlyEditing containsObject:indexPath]) {
        [cell openCell];
    }
    
    cell.layoutMargins = UIEdgeInsetsZero;
    
#ifdef DEBUG
    NSLog(@"Cell recursive description:\n\n%@\n\n", [cell performSelector:@selector(recursiveDescription)]);
#endif
    return cell;
}
- (void)cellDidOpen:(UITableViewCell *)cell
{
    NSIndexPath *currentEditingIndexPath = [self.tableView indexPathForCell:cell];
    [self.cellsCurrentlyEditing addObject:currentEditingIndexPath];
}

- (void)cellDidClose:(UITableViewCell *)cell
{
    [self.cellsCurrentlyEditing removeObject:[self.tableView indexPathForCell:cell]];
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else {
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    
//fetch bill feed
/*
-(NSArray*)loadBills
{
    
}*/
#pragma mark - SwipeableCellDelegate
- (void)buttonOneActionForItemText:(NSString *)itemText {
    NSLog(@"In the delegate, Clicked button one for %@", itemText);
}

- (void)buttonTwoActionForItemText:(NSString *)itemText {
    NSLog(@"In the delegate, Clicked button two for %@", itemText);
}

#pragma mark - ShareKit stuff

/*
-(IBAction)share
{
    // Create the item to share (in this example, a url)
    NSURL *url = [NSURL URLWithString:@"http://placeholderurl.com"];
    SHKItem *item = [SHKItem URL:url title:@"Check out this bill!"];
    
    // Get the ShareKit action sheet
    SHKActionSheet *actionSheet = [SHKActionSheet actionSheetForItem:item];
    
    // Display the action sheet
    [actionSheet showFromToolbar:self.navigationController.toolbar];
}
 */
@end
