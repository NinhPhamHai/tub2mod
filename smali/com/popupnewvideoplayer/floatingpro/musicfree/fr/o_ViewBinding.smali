.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;
.super Ljava/lang/Object;
.source "o_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

.field private view7f09004f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    .line 27
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mTopRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a5

    const-string v2, "field \'mNetworkErrorLl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const v0, 0x7f09004f

    const-string v1, "method \'onViewClicked\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->view7f09004f:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;

    .line 47
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->view7f09004f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/o_ViewBinding;->view7f09004f:Landroid/view/View;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
