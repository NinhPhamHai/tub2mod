.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter$1;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;->setAllDataLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/r$DiscoverAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
