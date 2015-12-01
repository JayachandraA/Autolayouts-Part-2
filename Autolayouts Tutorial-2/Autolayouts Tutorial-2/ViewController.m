//
//  ViewController.m
//  Autolayouts Tutorial-2
//
//  Created by Jayachandra AJ on 30/11/15.
//  Copyright © 2015 iOS Developers Network. All rights reserved.
//

#import "ViewController.h"
#import "BookInfo.h"
#import "BookInfoCell.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *listOfBooks;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    listOfBooks = [[NSMutableArray alloc] init];
    
    BookInfo *bookInfo = [[BookInfo alloc] init];
    bookInfo.name = @"Gone Girl";
    bookInfo.author = @"Gillian Flynn";
    bookInfo.icon = @"gone_girl";
    [listOfBooks addObject:bookInfo];
    
    bookInfo = [[BookInfo alloc] init];
    bookInfo.name = @"Me Before You";
    bookInfo.author = @"Jojo Moyes";
    bookInfo.icon = @"me_before_you";
    [listOfBooks addObject:bookInfo];

    bookInfo = [[BookInfo alloc] init];
    bookInfo.name = @"The Casual Vacancy";
    bookInfo.author = @"J. K. Rowling";
    bookInfo.icon = @"the_casual_vacancy";
    [listOfBooks addObject:bookInfo];

    bookInfo = [[BookInfo alloc] init];
    bookInfo.name = @"The Book Thief";
    bookInfo.author = @"Markus Zusak";
    bookInfo.icon = @"the_book_thief";
    [listOfBooks addObject:bookInfo];

    bookInfo = [[BookInfo alloc] init];
    bookInfo.name = @"A Street Cat Named Boy";
    bookInfo.author = @"James";
    bookInfo.icon = @"a_street_cat_named_boy";
    [listOfBooks addObject:bookInfo];
    
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return listOfBooks.count;
}

- (BookInfoCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BookInfoCell *cell = (BookInfoCell*)[tableView dequeueReusableCellWithIdentifier:@"BookInfoCell" forIndexPath:indexPath];
    BookInfo *bookInfo = listOfBooks[indexPath.row];
    cell.name.text = bookInfo.name;
    cell.author.text = bookInfo.author;
    cell.icon.image = [UIImage imageNamed:[bookInfo.icon stringByAppendingString:@".jpg"]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 140.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
