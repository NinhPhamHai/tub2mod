.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m_ViewBinding;
.super Ljava/lang/Object;
.source "m_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;

    .line 27
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0902e1

    const-string v2, "field \'mWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;->mWebView:Landroid/webkit/WebView;

    .line 28
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;

    .line 38
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;->mWebView:Landroid/webkit/WebView;

    .line 39
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/m;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
