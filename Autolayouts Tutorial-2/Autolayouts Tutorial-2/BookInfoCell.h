//
//  BookInfoCell.h
//  Autolayouts Tutorial-2
//
//  Created by Jayachandra AJ on 30/11/15.
//  Copyright © 2015 iOS Developers Network. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookInfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *author;

@end
