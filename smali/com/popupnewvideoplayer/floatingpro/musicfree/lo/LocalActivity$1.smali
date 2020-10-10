.class Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "LocalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
