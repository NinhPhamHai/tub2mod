.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/g;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/q;
.source "g.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/q;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 17
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->newInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    move-result-object v0

    return-object v0
.end method

.method public createToolbarTitle()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
