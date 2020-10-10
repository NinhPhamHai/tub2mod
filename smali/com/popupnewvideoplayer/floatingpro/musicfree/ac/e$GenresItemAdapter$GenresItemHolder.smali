.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "e.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenresItemHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field mPlaylistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

.field root:Landroid/view/View;

.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

.field type_iv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;Landroid/view/View;)V
    .locals 1

    .line 272
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    .line 273
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090220

    .line 275
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->root:Landroid/view/View;

    const v0, 0x7f090111

    .line 276
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->cover:Landroid/widget/ImageView;

    const v0, 0x7f0902c8

    .line 277
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->type_iv:Landroid/widget/TextView;

    .line 279
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;)V
    .locals 4

    .line 295
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->mPlaylistBean:Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    .line 297
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->cover:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string v1, ".png"

    const-string v2, ".webp"

    .line 303
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->access$400(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music/utunes_image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->cover:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V

    .line 308
    :goto_0
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    iget-object v1, v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->type_name:Ljava/lang/String;

    const-string v2, "Top World"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-static {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_1
    const-string p1, "GLOBAL"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "Global"

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$GenresItemAdapter$GenresItemHolder;->type_iv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
