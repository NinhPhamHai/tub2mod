.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;
.super Ljava/lang/Object;
.source "e_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

.field private view7f09004f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    .line 36
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 37
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090201

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mProgressBar:Landroid/widget/ProgressBar;

    .line 39
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901a4

    const-string v2, "field \'mNetworkError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mNetworkError:Landroid/widget/ImageView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090284

    const-string v2, "field \'mTextError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mTextError:Landroid/widget/TextView;

    const v0, 0x7f09004f

    const-string v1, "field \'mBtnRetry\' and method \'onViewClicked\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnRetry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mBtnRetry:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->view7f09004f:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a5

    const-string v2, "field \'mNetworkErrorLl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    .line 60
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 61
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mProgressBar:Landroid/widget/ProgressBar;

    .line 63
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mNetworkError:Landroid/widget/ImageView;

    .line 64
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mTextError:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mBtnRetry:Landroid/widget/Button;

    .line 66
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->view7f09004f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e_ViewBinding;->view7f09004f:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
