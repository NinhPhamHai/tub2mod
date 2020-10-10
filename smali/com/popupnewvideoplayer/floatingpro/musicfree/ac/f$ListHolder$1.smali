.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;
.super Ljava/lang/Object;
.source "f.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;-><init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;

.field final synthetic val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;

    iput-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;->val$this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->pos:I

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder$1;->this$1:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f$ListHolder;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/f;)V

    return-void
.end method
