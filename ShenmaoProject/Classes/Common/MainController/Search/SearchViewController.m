//
//  SearchViewController.m
//  ShenmaoProject
//
//  Created by xiangyuhui on 16/9/20.
//  Copyright © 2016年 神猫. All rights reserved.
//

#import "SearchViewController.h"
#import "DZNSegmentedControl.h"
#import "UIScrollView+DZNSegmentedControl.h"
#import "UIScrollView+EmptyDataSet.h"
#import "BaseItem.h"


@interface SearchViewController () <UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate,DZNEmptyDataSetSource>
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) DZNSegmentedControl *DZNSegmentedControl;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SearchViewController
{
    MLBSearchType searchType;
    NSMutableDictionary *dataSources;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initdata];
    [self setSearchView];
}

//initData
- (void)initdata{
    dataSources = [NSMutableDictionary dictionaryWithCapacity:5];
    searchType = MLBSearchTypeHome;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (void)viewDidAppear:(BOOL)animated{
     [_searchBar becomeFirstResponder];
}

- (void)setSearchView{
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    
    _searchBar = [[UISearchBar alloc] init];
    _searchBar.placeholder = @"输入搜索内容";
    _searchBar.tintColor = MLBLightGrayTextColor;
    _searchBar.returnKeyType = UIReturnKeySearch;
    _searchBar.searchBarStyle = UISearchBarStyleMinimal;
    _searchBar.delegate = self;
    self.navigationItem.titleView = _searchBar;
    
    _DZNSegmentedControl = ({
        DZNSegmentedControl *DZNSegmentd = [[DZNSegmentedControl alloc] initWithItems:@[@"插图", @"阅读", @"音乐", @"影视", @"作者/音乐人"]];
        DZNSegmentd.backgroundColor = [UIColor whiteColor];
        DZNSegmentd.frame = CGRectMake(0, 0, SCREEN_WIDTH, 35);
        [DZNSegmentd  addTarget:self action:@selector(segmentdSelected:) forControlEvents:UIControlEventValueChanged];
        DZNSegmentd.showsCount = NO;
        DZNSegmentd.font = FontWithSize(12);
        DZNSegmentd.tintColor = MLBAppThemeColor;
        [self.view addSubview:DZNSegmentd];
        [DZNSegmentd mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo (@35);
            make.top.left.right.equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
        }];
        
        DZNSegmentd;
    });
    _DZNSegmentedControl.hidden = YES;
    
    _tableView = ({
        UITableView *tableView = [[UITableView alloc] init];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.backgroundColor = [UIColor whiteColor];
        [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_DZNSegmentedControl.mas_bottom);
            make.left.bottom.right.equalTo(self.view);
        }];
        
        tableView;
    });
   
}



#pragma mark - DZNEmpeydatasource

- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView{
    return [UIImage imageNamed:@"search_null_image"];
}


- (NSArray *)arrayReturnNumber{
    NSArray *array = dataSources[[@(searchType) stringValue]];
    return array;
}
#pragma mark - segmentSelected


#pragma mark - tableView datasounce

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self arrayReturnNumber].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BaseItem *item = [self arrayReturnNumber][indexPath.row];
    
    UITableViewCell *Cell = [[UITableViewCell alloc] init];
    return Cell;
//    switch (searchType) {
//        case MLBSearchTypeHome:
//        
//            break;
//        case MLBSearchTypeRead:
//            <#statements#>
//            break;
//        case MLBSearchTypeMusic:
//            <#statements#>
//            break;
//        case MLBSearchTypeMovie:
//            <#statements#>
//            break;
//        case MLBSearchTypeAuthor:
//            <#statements#>
//            break;
//            
//        default:
//            break;
//    }
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}

@end
