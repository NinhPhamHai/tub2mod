.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;
.super Ljava/lang/Object;
.source "r_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

.field private view7f09004f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    .line 35
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mProgressBar:Landroid/widget/ProgressBar;

    .line 36
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 37
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090201

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09004f

    const-string v1, "field \'mBtnRetry\' and method \'onViewClicked\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnRetry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mBtnRetry:Landroid/widget/Button;

    .line 40
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->view7f09004f:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a5

    const-string v2, "field \'mNetworkErrorLl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;

    .line 57
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mProgressBar:Landroid/widget/ProgressBar;

    .line 58
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 59
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mBtnRetry:Landroid/widget/Button;

    .line 61
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->view7f09004f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r_ViewBinding;->view7f09004f:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
