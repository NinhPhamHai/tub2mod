.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;
.source "LocalActivity.java"


# instance fields
.field mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalFolder;

.field mFragments:[Landroidx/fragment/app/Fragment;

.field mMainText:[Ljava/lang/String;

.field mPlaylist:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalPlaylist;

.field mStorage:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalStorage;

.field mTabFolder:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mTabPlaylist:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mTabStorage:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field vpMain:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 53
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalPlaylist;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalPlaylist;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mPlaylist:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalPlaylist;

    .line 54
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalStorage;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalStorage;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mStorage:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalStorage;

    .line 55
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalFolder;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalFolder;-><init>()V

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalFolder;

    const/4 v0, 0x3

    .line 56
    new-array v1, v0, [Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mPlaylist:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalPlaylist;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mStorage:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalStorage;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalFolder;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 57
    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f1101bc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1101bd

    .line 58
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f1101bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mMainText:[Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 62
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$2;

    invoke-direct {v1, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 92
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 93
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mTabPlaylist:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 94
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mTabStorage:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 95
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mTabFolder:Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 44
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 45
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 46
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 47
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->initView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f090115

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 128
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
