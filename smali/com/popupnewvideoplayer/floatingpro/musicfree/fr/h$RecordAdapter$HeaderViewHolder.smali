.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "h.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mClearHistory:Landroid/widget/TextView;

.field mHeadHistory:Landroid/widget/RelativeLayout;

.field mNewFlowLayout:Lcom/popupnewvideoplayer/floatingpro/musicfree/v/NewFlowLayout;

.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;Landroid/view/View;)V
    .locals 1

    .line 210
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    .line 211
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f0

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->mHeadHistory:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900ef

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->mClearHistory:Landroid/widget/TextView;

    const v0, 0x7f0900d9

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/v/NewFlowLayout;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->mNewFlowLayout:Lcom/popupnewvideoplayer/floatingpro/musicfree/v/NewFlowLayout;

    .line 215
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->mClearHistory:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->mNewFlowLayout:Lcom/popupnewvideoplayer/floatingpro/musicfree/v/NewFlowLayout;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;)V

    invoke-virtual {p2, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/v/NewFlowLayout;->addTextViewClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ef

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteAllSearchRecords()V

    .line 230
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->mSearchRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 231
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$HeaderViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$300(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
