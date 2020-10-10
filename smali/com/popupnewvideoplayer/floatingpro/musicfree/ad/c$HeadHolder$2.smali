.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder$2;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c$HeadHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/c;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/DiscoverModule;->getHome_banner()Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/HomeBanner;->getHot_charts()Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/t;->actionStart(Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V

    return-void
.end method
