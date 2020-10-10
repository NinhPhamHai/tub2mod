.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;

.field final synthetic val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;->val$this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;->this$2:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$OnMainHistoryListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$OnMainHistoryListener;->onHistoryKeyClick(Ljava/lang/String;)V

    return-void
.end method
