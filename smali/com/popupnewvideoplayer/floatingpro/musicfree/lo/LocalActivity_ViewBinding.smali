.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LocalActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    .line 28
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 29
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090153

    const-string v2, "field \'mainTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 30
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0902df

    const-string v2, "field \'vpMain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;

    .line 40
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 41
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->mainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 42
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/lo/LocalActivity;->vpMain:Landroidx/viewpager/widget/ViewPager;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
