.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->loadAdS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->mAdContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
