//
//  Playlist.m
//  Algorythm2
//
//  Created by Claire on 2/5/15.
//  Copyright (c) 2015 Jencks. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

-(instancetype)initWithIndex: (NSUInteger)index {
    self = [super init];

    if (self) {
        MusicLibrary *musicLibrary = [MusicLibrary new];
        NSArray *library = musicLibrary.library;

        NSDictionary *playlistDictionary = library[index];

        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];

        NSString *iconName = [[NSString alloc]initWithString: [playlistDictionary objectForKey:kIcon]];
        _playlistIcon =[UIImage imageNamed:iconName];

        NSString *iconLargeName = [[NSString alloc] initWithString:[playlistDictionary objectForKey:kLargeIcon]];
        _playlistIconLarge = [UIImage imageNamed:iconLargeName];

        //add array to array
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];

        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbFromDictionary:colorDictionary];

    }

    return self;
}


-(UIColor *)rgbFromDictionary:(NSDictionary *)colorDictionary {

    CGFloat red = [[colorDictionary objectForKey:@"red"]doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"]doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"]doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"]doubleValue];

    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end


