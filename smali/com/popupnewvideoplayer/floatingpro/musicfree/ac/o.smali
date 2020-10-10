.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/o;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/q;
.source "o.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/q;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 13
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/n;-><init>()V

    return-object v0
.end method

.method public createToolbarTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1102ac

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
