//
//  fontechFirstViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechFirstViewController.h"

@interface fontechFirstViewController ()

@end

@implementation fontechFirstViewController

@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *viewArray = [[NSArray alloc] initWithObjects:@"jewel1.jpg", @"jewel2.jpg", @"jewel3.jpg", nil];
    NSArray *textArray = [[NSArray alloc] initWithObjects:@"創新\n\n近年來，年輕的消費群喜歡亮麗新穎有活潑感的產品，對老舊、傳統的都興趣缺缺，而以金飾特色起家的我們，更從產品設計與開發吸引年輕的一群加入顧客行列，另外也接受飾品大量開模製造的設計，以獨特的藝術眼光，對於珠寶飾品的熟悉，才能滿足顧客的裸石求鑲、舊飾翻新的需求，使一切能夠盡善盡美。 我們是一家非傳統的珠寶銀樓，從金飾到珠寶，我們將打破傳統制式的格局，創造與眾不同的風格，提供「美」的全面解決方案。", @"特色\n\n因地區特性進而發展出本公司特色，就是神佛用的客製精品，像是神明帽飾、法器與配件，其中以大甲鎮瀾宮、白沙屯拱天宮最具代表性，而其他作品更是遍及全省各地宮廟。\n有一個奶奶訂了金鞋子送他的阿孫，代表捷足先登，當傳家寶。還有訂金搖椅送媽媽的。", @"歷史\n\n本公司成立於1992年，上承祖輩是銀樓的第三代， 在承受傳統、創新、現實生活與內心的掙扎中，持續創新，並增進自我能力至GIA接受鑑定訓練、通過國家乙級金銀珠寶飾品加工證照。除了傳統的金飾與珠寶買賣，我們也能與顧客討論出自己心中理想的首飾，設計並打造實現。除了客製特別的飾品，亦有開模量產飾品的服務。 金工不僅是一種專業技術，同時也著重於文化與時尚的深耕，透過在這些領域深耕，漸漸開展出與眾不同的經營風格。",nil];
    
    for (int i = 0; i < [viewArray count]; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        fontechIntroView *introView = [[fontechIntroView alloc] initWithFrame:CGRectMake(frame.origin.x + 10, frame.origin.y + 10, self.scrollView.frame.size.width - 20, self.scrollView.frame.size.height - 10)];
        introView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        introView.textView.text = [textArray objectAtIndex:i];
        [self.scrollView addSubview:introView];
    }
    //Set the content size of our scrollview according to the total width of our imageView objects.
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [viewArray count], self.scrollView.frame.size.height);
	// Do any additional setup after loading the view, typically from a nib. 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

@end
