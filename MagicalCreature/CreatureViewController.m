//
//  CreatureViewController.m
//  MagicalCreature
//
//  Created by Pei Xiong on 3/22/16.
//  Copyright © 2016 Pei Xiong. All rights reserved.
//

#import "CreatureViewController.h"
@interface CreatureViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.enabled = NO;
}

- (IBAction)onEditButtonPressed:(UIBarButtonItem *)sender {
    if (self.editing) {
        self.textField.enabled = NO;
        self.editing = false;
        self.navigationItem.rightBarButtonItem.title = @"Edit";
        self.mc.name = self.textField.text;
        //self.textField.text = self.str;
        
    } else {
        self.textField.enabled = YES;
        self.editing = true;
        self.navigationItem.rightBarButtonItem.title = @"Done";
        
    }
}


@end
