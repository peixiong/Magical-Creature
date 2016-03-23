//
//  ViewController.m
//  MagicalCreature
//
//  Created by Pei Xiong on 3/22/16.
//  Copyright © 2016 Pei Xiong. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDataSource, UITabBarDelegate>

@property NSMutableArray *creatures;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MagicalCreature *monster1 = [[MagicalCreature alloc] initWithName:@"MonMonster"];
    MagicalCreature *monster2 = [[MagicalCreature alloc] initWithName:@"TueMonster"];
    MagicalCreature *monster3 = [[MagicalCreature alloc] initWithName:@"WedMonster"];
    
    self.creatures = [NSMutableArray arrayWithObjects:monster1, monster2, monster3, nil];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    
    MagicalCreature *mc = self.creatures[indexPath.row];
    cell.textLabel.text = mc.name;
    
    
    return cell;
}

- (IBAction)onAddButtonPressed:(UIButton *)sender {
    MagicalCreature *newMonster =[[MagicalCreature alloc] initWithName:self.textField.text];
    [self.creatures addObject:newMonster];
    [self.tableView reloadData];
    self.textField.text = @"";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CreatureViewController *dvc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    MagicalCreature *mc = [self.creatures objectAtIndex:indexPath.row];
    dvc.nameLableText = mc.name;
}


@end












