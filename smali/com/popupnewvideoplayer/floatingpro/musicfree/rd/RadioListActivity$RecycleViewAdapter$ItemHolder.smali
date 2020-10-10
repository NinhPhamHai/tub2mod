.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field ivLogo:Landroid/widget/ImageView;

.field musicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

.field tvTitle:Landroid/widget/TextView;

.field tv_description:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;Landroid/view/View;)V
    .locals 1

    .line 330
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    .line 331
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c8

    .line 332
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0902b1

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->tv_description:Landroid/widget/TextView;

    const v0, 0x7f09011b

    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->ivLogo:Landroid/widget/ImageView;

    .line 337
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->bindData(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V

    return-void
.end method

.method private bindData(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 354
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->tv_description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter$ItemHolder;->musicBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    return-void
.end method
