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
/*
    //ORIGINAL BUTTON SET-UP
    UIColor *buttonColor = [UIColor blueColor];
    self.aButton.tintColor = buttonColor;
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];

    //ORIGINAL IMAGEVIEW SET-UP
    self.placeholderImageValue0.layer.cornerRadius = 5;
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.placeholderImageValue0.image = playlist.playlistIcon;
*/
    self.navigationItem.title = @"Playlists";

    //CREATING ALL COLLECTION VIEWS - iterate through and create the views
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {

        //access playlist
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        //store selected instance (via outletted array) in an imageview instance
        UIImageView *playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {

        //tracking the imageview that triggered the segue
        UIImageView *playlistImageView = (UIImageView *) [sender view];

        if ([self.playlistImageViews containsObject:playlistImageView]) {
            //getting the index in the array of image views and storing in index variable
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];

        //obtain a reference to the DetailViewController
            //and assign that reference to a local variable
        PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
            //uses index (variable) of clicked upon imageview to link correct index of playlist data
        playlistDetailViewController.playlist = [[Playlist alloc] initWithIndex:index];
            }
        }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
@end
