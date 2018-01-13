//
//  SBTableViewViewController.m
//  Pocket Physics
//
//  Created by Federico Baldi Lanfranchi on 22/10/13.
//  Copyright (c) 2013 Federico Baldi Lanfranchi. All rights reserved.
//

#import "SBTableViewController.h"
#import "SBViewController.h"

@interface SBTableViewController ()

@end

@implementation SBTableViewController
@synthesize tableViewAlfabetica;
@synthesize tableViewCronologica;
@synthesize tableViewAlfabeticaEsercizi;
@synthesize tableViewCronologicaEsercizi;
@synthesize tableViewCompiti;
@synthesize tableViewFormule;
@synthesize tableViewGlossario;
@synthesize tableViewPreferiti;
@synthesize tableViewPreferitiEsercizi;
@synthesize buttonPreferiti;

-(NSMutableArray *)firstSectionObjects
{
    if (!_firstSectionObjects) {
        _firstSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _firstSectionObjects;
    
}

-(NSMutableArray *)secondSectionObjects
{
    if (!_secondSectionObjects) {
        _secondSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _secondSectionObjects;
    
}

-(NSMutableArray *)thirdSectionObjects
{
    if (!_thirdSectionObjects) {
        _thirdSectionObjects = [[NSMutableArray alloc] init];
    }
    
    return _thirdSectionObjects;
    
}

-(NSMutableArray *)firstSectionResults
{
    if (!_firstSectionResults) {
        _firstSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _firstSectionResults;
    
}

-(NSMutableArray *)secondSectionResults
{
    if (!_secondSectionResults) {
        _secondSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _secondSectionResults;
    
}

-(NSMutableArray *)thirdSectionResults
{
    if (!_thirdSectionResults) {
        _thirdSectionResults = [[NSMutableArray alloc] init];
    }
    
    return _thirdSectionResults;
    
}

-(NSMutableArray *)objects
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    
    return _objects;
    
}

-(NSMutableArray *)results
{
    if (!_results) {
        _results = [[NSMutableArray alloc] init];
    }
    
    return _results;
    
}

-(NSMutableArray *)theFavorites
{
    if (!_theFavorites) {
        _theFavorites = [[NSMutableArray alloc] init];
    }
    
    return _theFavorites;
    
}

-(NSMutableArray *)theFavoritesEsercizi
{
    if (!_theFavoritesEsercizi) {
        _theFavoritesEsercizi = [[NSMutableArray alloc] init];
    }
    
    return _theFavoritesEsercizi;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (tableViewAlfabetica) {
        
        [self.objects addObject:@"Campo Elettrico"];
        [self.objects addObject:@"Campo Magnetico"];
        [self.objects addObject:@"Corrente Elettrica"];
        [self.objects addObject:@"Dinamica Rotazionale"];
        [self.objects addObject:@"Energia Potenziale e Conservazione dell'Energia Meccanica"];
        [self.objects addObject:@"Equazioni di Maxwell"];
        [self.objects addObject:@"Gravitazione"];
        [self.objects addObject:@"Impulso e Quantità di Moto"];
        [self.objects addObject:@"Induzione Elettromagnetica"];
        [self.objects addObject:@"Lavoro ed Energia Cinetica"];
        [self.objects addObject:@"Meccanica dei Fluidi"];
        [self.objects addObject:@"Modello Cinetico dei Gas e Energia Interna"];
        [self.objects addObject:@"Moti Piani e Sistemi di Riferimento non Inerziali"];
        [self.objects addObject:@"Moti Rettilinei e Forze Costanti"];
        [self.objects addObject:@"Onde"];
        [self.objects addObject:@"Primo Principio della Termodinamica"];
        [self.objects addObject:@"Secondo Principio della Termodinamica"];
        [self.objects addObject:@"Temperatura"];
        [self.objects addObject:@"Teoria della Relatività Speciale"];
        
    } else if (tableViewCronologica) {
        
        [self.firstSectionObjects addObject:@"Moti Rettilinei e Forze Costanti"];
        [self.firstSectionObjects addObject:@"Moti Piani e Sistemi di Riferimento non Inerziali"];
        [self.firstSectionObjects addObject:@"Impulso e Quantità di Moto"];
        [self.firstSectionObjects addObject:@"Lavoro ed Energia Cinetica"];
        [self.firstSectionObjects addObject:@"Energia Potenziale e Conservazione dell'Energia Meccanica"];
        [self.firstSectionObjects addObject:@"Gravitazione"];
        [self.firstSectionObjects addObject:@"Dinamica Rotazionale"];
        
        [self.secondSectionObjects addObject:@"Meccanica dei Fluidi"];
        [self.secondSectionObjects addObject:@"Onde"];
        [self.secondSectionObjects addObject:@"Temperatura"];
        [self.secondSectionObjects addObject:@"Modello Cinetico dei Gas e Energia Interna"];
        [self.secondSectionObjects addObject:@"Primo Principio della Termodinamica"];
        [self.secondSectionObjects addObject:@"Secondo Principio della Termodinamica"];
        
        [self.thirdSectionObjects addObject:@"Campo Elettrico"];
        [self.thirdSectionObjects addObject:@"Corrente Elettrica"];
        [self.thirdSectionObjects addObject:@"Campo Magnetico"];
        [self.thirdSectionObjects addObject:@"Induzione Elettromagnetica"];
        [self.thirdSectionObjects addObject:@"Equazioni di Maxwell"];
        [self.thirdSectionObjects addObject:@"Teoria della Relatività Speciale"];
        [self.thirdSectionObjects addObject:@"Fenomeni Quantistici"];
        
    } else if (tableViewAlfabeticaEsercizi) {
        
        [self.objects addObject:@"Campo Elettrico"];
        [self.objects addObject:@"Campo Magnetico"];
        [self.objects addObject:@"Corrente Elettrica"];
        [self.objects addObject:@"Dinamica Rotazionale"];
        [self.objects addObject:@"Energia Potenziale e Conservazione"];
        [self.objects addObject:@"Equazioni di Maxwell"];
        [self.objects addObject:@"Gravitazione"];
        [self.objects addObject:@"Impulso e Quantità di Moto"];
        [self.objects addObject:@"Induzione Elettromagnetica"];
        [self.objects addObject:@"Lavoro ed Energia Cinetica"];
        [self.objects addObject:@"Meccanica dei Fluidi"];
        [self.objects addObject:@"Modello cinetico dei Gas e Energia Interna"];
        [self.objects addObject:@"Moti Piani e Sistemi di Riferimento non Inerziali"];
        [self.objects addObject:@"Moti Rettilinei e Forze Costanti"];
        [self.objects addObject:@"Onde"];
        [self.objects addObject:@"Primo Principio della Termodinamica"];
        [self.objects addObject:@"Secondo Principio della Termodinamica"];
        [self.objects addObject:@"Quesiti di Elettromagnetismo"];
        [self.objects addObject:@"Temperatura"];
        
    } else if (tableViewCronologicaEsercizi) {
        
        [self.firstSectionObjects addObject:@"Moti Piani e Sistemi di Riferimento non Inerziali"];
        [self.firstSectionObjects addObject:@"Impulso e Quantità di Moto"];
        [self.firstSectionObjects addObject:@"Lavoro ed Energia Cinetica"];
        [self.firstSectionObjects addObject:@"Energia Potenziale e Conservazione"];
        [self.firstSectionObjects addObject:@"Gravitazione"];
        [self.firstSectionObjects addObject:@"Dinamica Rotazionale"];
        
        [self.secondSectionObjects addObject:@"Meccanica dei Fluidi"];
        [self.secondSectionObjects addObject:@"Onde"];
        [self.secondSectionObjects addObject:@"Temperatura"];
        [self.secondSectionObjects addObject:@"Modello cinetico dei Gas e Energia Interna"];
        [self.secondSectionObjects addObject:@"Primo Principio della Termodinamica"];
        [self.secondSectionObjects addObject:@"Secondo Principio della Termodinamica"];
        
        [self.thirdSectionObjects addObject:@"Campo Elettrico"];
        [self.thirdSectionObjects addObject:@"Corrente Elettrica"];
        [self.thirdSectionObjects addObject:@"Campo Magnetico"];
        [self.thirdSectionObjects addObject:@"Induzione Elettromagnetica"];
        [self.thirdSectionObjects addObject:@"Equazioni di Maxwell"];
        [self.thirdSectionObjects addObject:@"Quesiti di Elettromagnetismo"];
        
    } else if (tableViewCompiti) {
        
        [self.objects addObject:@"Attrito - Moti rotazionali - Momento d'inerzia"];
        [self.objects addObject:@"Campi magnetici - Corrente"];
        [self.objects addObject:@"Cariche elettriche - Dipoli - Condensatori"];
        [self.objects addObject:@"Corrente - Campi magnetici - Campi elettrici"];
        [self.objects addObject:@"Corrente - Campi magnetici - Differenza di potenziale"];
        [self.objects addObject:@"Corrente - Cariche elettriche - Campi magnetici - Campi elettrici"];
        [self.objects addObject:@"Corrente - Condensatori - Campi magnetici"];
        [self.objects addObject:@"Dinamica - Piano inclinato - Moti"];
        [self.objects addObject:@"Energia cinetica - Energia potenziale - Molle - Moti"];
        [self.objects addObject:@"Energia cinetica - Energia potenziale - Molle"];
        [self.objects addObject:@"Gas - Temperatura - Termodinamica - Macchine termiche"];
        [self.objects addObject:@"Gas - Termodinamica - Onde sonore"];
        [self.objects addObject:@"Gas - Termodinamica - Temperatura"];
        [self.objects addObject:@"Gravitazione - Moti"];
        [self.objects addObject:@"Momento d'inerzia - Dinamica liquidi - Piano inclinato"];
        [self.objects addObject:@"Onde sonore - Onde stazionarie - Frequenza"];
        [self.objects addObject:@"Piano inclinato - Quantità di moto - Attrito - Dinamica"];
        [self.objects addObject:@"Sistemi di riferimento - Piano inclinato - Seconda legge della dinamica"];
        [self.objects addObject:@"Statica liquidi - Gravitazione - Moti"];
        [self.objects addObject:@"Termodinamica - Entropia - Macchine termiche"];
        [self.objects addObject:@"Urti - Moti - Molle"];
        [self.objects addObject:@"Simulazione Terza Prova"];
        
    } else if (tableViewFormule) {
        
        [self.objects addObject:@"Cinematica"];
        [self.objects addObject:@"Costanti fisiche"];
        [self.objects addObject:@"Elasticità"];
        [self.objects addObject:@"Energia"];
        [self.objects addObject:@"Fluidi"];
        [self.objects addObject:@"Forze"];
        [self.objects addObject:@"Impulso e Momento angolare"];
        [self.objects addObject:@"Onde"];
        [self.objects addObject:@"Sistemi a più corpi"];
        [self.objects addObject:@"Termodinamica"];
        [self.objects addObject:@"Urti"];
        [self.objects addObject:@"Vettori"];
        
    } else if (tableViewGlossario) {
        
        [self.objects addObject:@"Areiformi"];
        [self.objects addObject:@"Differenza di potenziale"];
        [self.objects addObject:@"Dipoli elettrici"];
        [self.objects addObject:@"Ebollizione e evaporazione"];
        [self.objects addObject:@"Impulso e Quantità di moto"];
        [self.objects addObject:@"Legge di Biot-Savart"];
        [self.objects addObject:@"Linee di campo"];
        [self.objects addObject:@"Moto circolare uniforme"];
        [self.objects addObject:@"Moto parabolico"];
        [self.objects addObject:@"Moto rettilineo uniformemente accelerato"];
        [self.objects addObject:@"Onde stazionarie"];
        [self.objects addObject:@"Potenziale di estrazione"];
        [self.objects addObject:@"Primo principio della termodinamica"];
        [self.objects addObject:@"Principi di Kirchhoff"];
        [self.objects addObject:@"Principio di relatività di Einstein"];
        [self.objects addObject:@"Principio zero"];
        [self.objects addObject:@"Secondo principio della termodinamica (Kelvin e Clausius)"];
        [self.objects addObject:@"Superconduttività"];
        [self.objects addObject:@"Teorema di Ampère"];
        [self.objects addObject:@"Teorema di Carnot"];
        [self.objects addObject:@"Teorema di Gauss per il campo elettrico"];
        [self.objects addObject:@"Teorema di Gauss per il campo magnetico"];
        [self.objects addObject:@"Terza legge della dinamica"];
        [self.objects addObject:@"Velocità di fuga"];

        
        
    } else if(tableViewPreferiti) {
        
        self.theFavorites = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"Key"]];
        
        int i;
        
        for(i = 0;i <= [self.theFavorites count]; i++) {
            
            int value = i - 1;
            
            if (value >= 0) {
            [self.objects addObject:[self.theFavorites objectAtIndex:value]];
        }
            
        
            
    }


        
        UIRefreshControl *refresh = [[UIRefreshControl alloc] init];
        refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"Scorri verso il basso per aggiornare..."];
        [refresh addTarget:self action:@selector(refreshMyTable:) forControlEvents:UIControlEventValueChanged];
        self.refreshControl = refresh;
        
    } else if(tableViewPreferitiEsercizi) {
        
        
        //Loading data..
        self.theFavoritesEsercizi = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"KeyEsercizi"]];
        
        //Testing it..
        NSLog(@"%@",self.theFavoritesEsercizi);
        
        
        int i;
        
        for(i = 0;i <= [self.theFavoritesEsercizi count]; i++) {
            
            int value = i - 1;
            
            if (value >= 0) {
                [self.objects addObject:[self.theFavoritesEsercizi objectAtIndex:value]];
            }
            
            
            
        }
        
        
        UIRefreshControl *refreshEsercizi = [[UIRefreshControl alloc] init];
        refreshEsercizi.attributedTitle = [[NSAttributedString alloc] initWithString:@"Scorri verso il basso per aggiornare..."];
        [refreshEsercizi addTarget:self action:@selector(refreshMyTableEsercizi:) forControlEvents:UIControlEventValueChanged];
        self.refreshControl = refreshEsercizi;
        
    }

    
}


- (void)refreshMyTable:(UIRefreshControl *)refreshControl {
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Aggiornamento in corso..."];
    
    self.theFavorites = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"Key"]];
    
    int i;
    self.objects = nil;
    for(i = 0;i <= [self.theFavorites count]; i++) {
        
        int value = i - 1;
        
        if (value >= 0) {
            [self.objects addObject:[self.theFavorites objectAtIndex:value]];
        }
    }
    
    [tableViewPreferiti reloadData];
    [refreshControl endRefreshing];
}

- (void)refreshMyTableEsercizi:(UIRefreshControl *)refreshControl {
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Aggiornamento in corso..."];
    
    self.theFavoritesEsercizi = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"KeyEsercizi"]];
    
    int i;
    self.objects = nil;
    for(i = 0;i <= [self.theFavoritesEsercizi count]; i++) {
        
        int value = i - 1;
        
        if (value >= 0) {
            [self.objects addObject:[self.theFavoritesEsercizi objectAtIndex:value]];
        }
    }
    
    [tableViewPreferitiEsercizi reloadData];
    [refreshControl endRefreshing];
}


// Uncomment the following line to preserve selection between presentations.
// self.clearsSelectionOnViewWillAppear = NO;

// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchThroughData
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        
        self.results = nil;
        NSPredicate *resultsPredicate = [NSPredicate predicateWithFormat:@"SELF contains [search] %@", self.searchBar.text];
        self.results = [[self.objects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
        
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        
        self.firstSectionResults = nil;
        self.secondSectionResults = nil;
        self.thirdSectionResults = nil;
        NSPredicate *resultsPredicate = [NSPredicate predicateWithFormat:@"SELF contains [search] %@", self.searchBar.text];
        self.firstSectionResults = [[self.firstSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
        self.secondSectionResults = [[self.secondSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
        self.thirdSectionResults = [[self.thirdSectionObjects filteredArrayUsingPredicate:resultsPredicate] mutableCopy];
    }
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [self searchThroughData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        return 1;
    } else return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        if (tableView == self.tableView) {
            return self.objects.count;
        } else {
            [self searchThroughData];
            return self.results.count;
        }
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        switch (section) {
            case 0:
                if (tableView == self.tableView) {
                    return self.firstSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.firstSectionResults.count;
                }
                break;
                
            case 1:
                if (tableView == self.tableView) {
                    return self.secondSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.secondSectionResults.count;
                }
                break;
                
            case 2:
                if (tableView == self.tableView) {
                    return self.thirdSectionObjects.count;
                } else {
                    [self searchThroughData];
                    return self.thirdSectionResults.count;
                }
                break;
                
            default:
                break;
                
        }
    } return 0;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (tableViewCronologica || tableViewCronologicaEsercizi) {
        switch (section) {
                
            case 0: return @"Primo Anno";
                break;
                
            case 1: return @"Secondo Anno";
                break;
                
            case 2: return @"Terzo Anno";
                break;
        }
    } else {
        return nil;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
        if (tableView == self.tableView) {
            cell.textLabel.text = self.objects[indexPath.row];
        } else {
            cell.textLabel.text = self.results[indexPath.row];
        }
    } else if (tableViewCronologica || tableViewCronologicaEsercizi) {
        
        switch (indexPath.section) {
            case 0:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.firstSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.firstSectionResults[indexPath.row];
                }
                break;
                
            case 1:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.secondSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.secondSectionResults[indexPath.row];
                }
                break;
                
            case 2:
                if (tableView == self.tableView) {
                    cell.textLabel.text = self.thirdSectionObjects[indexPath.row];
                } else {
                    cell.textLabel.text = self.thirdSectionResults[indexPath.row];
                }
                break;
                
            default:
                break;
        }
    }
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowDetail"]) {
        NSString *object = nil;
        NSIndexPath *indexPath = nil;
        
        if (tableViewAlfabetica || tableViewCompiti || tableViewFormule || tableViewGlossario || tableViewAlfabeticaEsercizi || tableViewPreferiti || tableViewPreferitiEsercizi) {
            if (self.searchDisplayController.isActive) {
                indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                object = self.results[indexPath.row];
            } else {
                indexPath = [self.tableView indexPathForSelectedRow];
                object = self.objects[indexPath.row];
            }
        }
        
        if (tableViewCronologica || tableViewCronologicaEsercizi) {
            int i;
            for (i = 0; i < 3; i++) {
                switch (indexPath.section) {
                    case 0:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.firstSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.firstSectionObjects[indexPath.row];
                        }
                        break;
                        
                    case 1:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.secondSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.secondSectionObjects[indexPath.row];
                        }
                        break;
                        
                    case 2:
                        if (self.searchDisplayController.isActive) {
                            indexPath = [[self.searchDisplayController searchResultsTableView] indexPathForSelectedRow];
                            object = self.thirdSectionResults[indexPath.row];
                        } else {
                            indexPath = [self.tableView indexPathForSelectedRow];
                            object = self.thirdSectionObjects[indexPath.row];
                        }
                        break;
                        
                    default:
                        break;
                }
            }
        }
      
        [[segue destinationViewController] setNavBarLabelContents:object];
        
        if (tableViewPreferiti || tableViewPreferitiEsercizi) {
            [[segue destinationViewController] setIsFavorite:NO];
            
        } else {
            [[segue destinationViewController] setIsFavorite:YES];
        }
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.searchDisplayController.isActive) {
        
        [self performSegueWithIdentifier:@"ShowDetail" sender:self];
        
    }
    
     self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:nil];
    
}



 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
     if (tableViewPreferiti || tableViewPreferitiEsercizi) {
         return YES;
     }
     else
     {
         return NO;
     }
 }
 


 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
     if (editingStyle == UITableViewCellEditingStyleDelete) {
     
 // Delete the row from the data source
     
         if (tableViewPreferiti) {
             [self.objects removeObjectAtIndex:indexPath.row];
             [self.theFavorites removeObjectAtIndex:indexPath.row];
         
             [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
         
             NSLog(@"%@",self.theFavorites);
         
             [[NSUserDefaults standardUserDefaults] setObject:self.theFavorites forKey:@"Key"];
         
         } else if(tableViewPreferitiEsercizi) {
             [self.objects removeObjectAtIndex:indexPath.row];
             [self.theFavoritesEsercizi removeObjectAtIndex:indexPath.row];
         
             [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
         
             NSLog(@"%@",self.theFavoritesEsercizi);
         
             [[NSUserDefaults standardUserDefaults] setObject:self.theFavoritesEsercizi forKey:@"KeyEsercizi"];

         }

     
     } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     
 }


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */


 //Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
     if (tableViewPreferiti || tableViewPreferitiEsercizi ) {
         return YES;
         
     } else {
         return NO;
         
     }

 }



@end