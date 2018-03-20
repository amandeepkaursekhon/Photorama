//
//  PhotoDetail.swift
//  Photorama
//
//  Created by Amandeep Sekhon on 2018-03-19.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit
class PhotoDetail : PhotoCollectionViewCell
{
   
    - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"nextVCSeagueName" sender:self];
    }
    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"nextVCSeagueName"]) {
    MyviewController *myvc = segue.destinationViewController;
    myvc.image = [imagesArray objectAtIndex:[[self.collectionView indexPathsForSelectedItems] firstObject]];
    }
    }
    -(void)viewDidLoad {
    [super viewDidLoad];
    
    myImageView.image = self.image;
    }
}
