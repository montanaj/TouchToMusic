//
//  PlaylistDetailViewController.m
//  Algorythm2
//
//  Created by Claire on 2/5/15.
//  Copyright (c) 2015 Jencks. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor purpleColor];
    self.navigationItem.title = @"Artists";

    if (self.playlist) {
//        self.buttonPressLabel.text = self.playlist.playlistTitle;
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistDescription.text = self.playlist.playlistDescription;
        self.playlistTitle.text = self.playlist.playlistTitle;
        
        self.artistName0.text = self.playlist.playlistArtists[0];
        self.artistName1.text = self.playlist.playlistArtists[1];
        self.artistName2.text = self.playlist.playlistArtists[2];
        self.artistName3.text = self.playlist.playlistArtists[3];
        self.artistName4.text = self.playlist.playlistArtists[4];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
