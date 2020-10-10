.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;
.super Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/t;
.source "y.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewHolder"
.end annotation


# instance fields
.field ic_cover:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

.field mMore:Landroid/widget/ImageView;

.field mPosition:I

.field mRoot:Landroid/view/View;

.field mTvChannel:Landroid/widget/TextView;

.field mTvTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;

.field tv_rank:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;",
            ")V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;

    .line 103
    invoke-direct {p0, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/t;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902c8

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvTitle:Landroid/widget/TextView;

    const p1, 0x7f0902bd

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->tv_rank:Landroid/widget/TextView;

    const p1, 0x7f0902ac

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvChannel:Landroid/widget/TextView;

    const p1, 0x7f090194

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mMore:Landroid/widget/ImageView;

    const p1, 0x7f0900f5

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->ic_cover:Landroid/widget/ImageView;

    const p1, 0x7f090149

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mRoot:Landroid/view/View;

    .line 110
    iput-object p3, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mDataList:Ljava/util/List;

    .line 111
    iput-object p4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mContext:Landroid/content/Context;

    .line 112
    iput-object p5, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

    .line 113
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->tv_rank:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mPosition:I

    .line 123
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvChannel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y;)I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 125
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mDataList:Ljava/util/List;

    iget v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    .line 126
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mTvChannel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->ic_cover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090149

    if-eq p1, v0, :cond_1

    const v0, 0x7f090194

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;->onMoreItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mListener:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/y$ListViewHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    invoke-interface {p1, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/l;->onItemClick(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    :goto_0
    return-void
.end method
