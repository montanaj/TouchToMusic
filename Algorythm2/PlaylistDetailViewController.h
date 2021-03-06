//
//  PlaylistDetailViewController.h
//  Algorythm2
//
//  Created by Claire on 2/5/15.
//  Copyright (c) 2015 Jencks. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist;

@interface PlaylistDetailViewController : UIViewController

@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *artistName0;
@property (weak, nonatomic) IBOutlet UILabel *artistName1;
@property (weak, nonatomic) IBOutlet UILabel *artistName2;
@property (weak, nonatomic) IBOutlet UILabel *artistName3;
@property (weak, nonatomic) IBOutlet UILabel *artistName4;


@end
