//
//  ActualPage.h
//  MyCountryBook
//
//  Created by Priya on 03/05/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActualPage : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myimageview;
@property (strong, nonatomic) IBOutlet UITextView *mytextview;
@property (strong, nonatomic) IBOutlet UITextField *mypagenotext;
@property (strong, nonatomic) IBOutlet UITextField *titletext;

@property(nonatomic) NSUInteger index;
-(NSString *)filePath;

@end
