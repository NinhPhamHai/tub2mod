.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "f.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListHolder"
.end annotation


# instance fields
.field mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field mCover:Landroid/widget/ImageView;

.field mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

.field mItem:Landroid/widget/LinearLayout;

.field mName:Landroid/widget/TextView;

.field pos:I

.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;


# direct methods
.method public constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;Landroid/view/View;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    .line 161
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090141

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mItem:Landroid/widget/LinearLayout;

    const v0, 0x7f090111

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f0902b9

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mName:Landroid/widget/TextView;

    const v0, 0x7f090059

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 167
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$2;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 187
    iput p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->pos:I

    .line 188
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    .line 189
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->pos:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOLDER_TYPE_USER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/DBHelper;->getOneMusicFromFolder(Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;)Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f080289

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOLDER_TYPE_DATABASE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country_topvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    const-string v0, ".png"

    const-string v1, ".webp"

    .line 214
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;->mStorageReference:Lcom/google/firebase/storage/StorageReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/utunes_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOLDER_TYPE_YOUTUBE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 222
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mFolder:Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/database/local/bean/Folder;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_5
    const-string p1, "Application Error"

    .line 228
    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/e/k;->showMessage(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_0
    return-void
.end method
