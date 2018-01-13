//
//  SBTableViewViewController.h
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 22/10/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBTableViewController : UITableViewController <UISearchBarDelegate>


@property (nonatomic, strong) NSMutableArray *objects;
@property (nonatomic, strong) NSMutableArray *results;

@property (nonatomic, strong) NSMutableArray *firstSectionObjects;
@property (nonatomic, strong) NSMutableArray *secondSectionObjects;
@property (nonatomic, strong) NSMutableArray *thirdSectionObjects;

@property (nonatomic, strong) NSMutableArray *firstSectionResults;
@property (nonatomic, strong) NSMutableArray *secondSectionResults;
@property (nonatomic, strong) NSMutableArray *thirdSectionResults;
@property (nonatomic, strong) NSMutableArray *theFavorites;
@property (nonatomic, strong) NSMutableArray *theFavoritesEsercizi;

@property (nonatomic, strong) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) IBOutlet UITableView *tableViewAlfabetica;
@property (strong, nonatomic) IBOutlet UITableView *tableViewCronologica;
@property (strong, nonatomic) IBOutlet UITableView *tableViewCronologicaEsercizi;
@property (strong, nonatomic) IBOutlet UITableView *tableViewAlfabeticaEsercizi;
@property (strong, nonatomic) IBOutlet UITableView *tableViewCompiti;
@property (strong, nonatomic) IBOutlet UITableView *tableViewFormule;
@property (strong, nonatomic) IBOutlet UITableView *tableViewGlossario;
@property (strong, nonatomic) IBOutlet UITableView *tableViewPreferiti;
@property (strong, nonatomic) IBOutlet UITableView *tableViewPreferitiEsercizi;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonPreferiti;


@end
