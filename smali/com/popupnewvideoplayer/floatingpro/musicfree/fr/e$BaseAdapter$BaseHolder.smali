.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "e.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHolder"
.end annotation


# instance fields
.field current:I

.field mCover:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;Landroid/view/View;)V
    .locals 1

    .line 487
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    .line 488
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c8

    .line 489
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 490
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->mCover:Landroid/widget/ImageView;

    .line 492
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->bindData(I)V

    return-void
.end method

.method private bindData(I)V
    .locals 2

    .line 506
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->current:I

    .line 507
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->topTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->topImages:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$BaseAdapter$BaseHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
