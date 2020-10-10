.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;
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
    name = "RecordViewHolder"
.end annotation


# instance fields
.field btn_delete:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    .line 170
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902c8

    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f090043

    .line 172
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->btn_delete:Landroid/widget/ImageButton;

    .line 173
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->btn_delete:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090043

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902c8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->mSearchRecords:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/SearchRecord;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$102(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;)Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$OnMainHistoryListener;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$OnMainHistoryListener;->onHistoryKeyClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 191
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 193
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->mSearchRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/SearchRecord;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->deleteSearchRecord(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h;->mSearchRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter$RecordViewHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/h$RecordAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
