//
//  CoverFlowLayout.m
//  CoverFlowLayout
//
//  Created by Ali Dahesh on 2016-11-17.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

UICollectionViewFlowLayout *flowLayout;

- (void)prepareLayout
{
    int up=200, down=200;
    self.itemSize = CGSizeMake(up, down);
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    CGFloat Width = [UIScreen mainScreen].bounds.size.width;
    
    self.sectionInset = UIEdgeInsetsMake(fabsl((height-up - 50)/2), 0, fabsl((height-up)/2), 0);

  
}


-(CGSize)collectionViewContentSize {
    
    CGFloat height2 = [UIScreen mainScreen].bounds.size.height;
    
    return CGSizeMake(1000, height2);
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    
    NSLog(@"%f",rect.size.width);
    CGRect visibleRegion;
    
    
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
    
    return attributes;
    
    
}

@end
