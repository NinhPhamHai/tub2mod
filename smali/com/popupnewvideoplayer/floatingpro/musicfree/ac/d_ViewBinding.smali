.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d_ViewBinding;
.super Ljava/lang/Object;
.source "d_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;

    .line 26
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0900e3

    const-string v2, "field \'mGenresToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d_ViewBinding;->target:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;

    .line 36
    iput-object v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/d;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
