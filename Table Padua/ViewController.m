//
//  ViewController.m
//  Table Padua
//
//  Created by Walter Gonzalez Domenzain on 22/01/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "ViewController.h"
#import "cellWorkers.h"

NSMutableArray  *maNames;
NSMutableArray  *maRoles;
NSMutableArray  *maImgs;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initVariables];
}
- (void)initVariables
{
    maNames     = [NSMutableArray arrayWithObjects: @"Walter González", @"Padua Fregoso", @"Roberto Rey", @"Roberto Novelo", @"Edna Pacillas", nil];
    
    maRoles     = [NSMutableArray arrayWithObjects: @"CEO", @"Pistola", @"Applicatio Chingon", @"Disque Backend", @"Graphics", nil];
    
    maImgs      = [NSMutableArray arrayWithObjects: @"chavo.png", @"chilindrina.png", @"clotilde.png", @"jaimito.png", @"nono.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cellWorkers";
    
    cellWorkers *cell = (cellWorkers *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellWorkers alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblName.text       = maNames[indexPath.row];
    cell.lblRole.text       = maRoles[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
}


@end
