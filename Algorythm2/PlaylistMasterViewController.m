//
//  PlayListMasterViewController.m
//  Algorythm2
//
//  Created by Claire on 2/5/15.
//  Copyright (c) 2015 Jencks. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor blueColor];
    UIColor *buttonColor = [UIColor blueColor];
    self.aButton.tintColor = buttonColor;
    self.navigationItem.title = @"Playlists";
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];

    self.placeholderImageValue0.layer.cornerRadius = 5;
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.placeholderImageValue0.image = playlist.playlistIcon;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        //obtain a reference to the DetailViewController
            //and assign that reference to a local variable
        PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailViewController.playlist = [[Playlist alloc] initWithIndex:0];
    }
}
@end
