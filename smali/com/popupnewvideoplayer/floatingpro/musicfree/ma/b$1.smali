.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ma/b;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
