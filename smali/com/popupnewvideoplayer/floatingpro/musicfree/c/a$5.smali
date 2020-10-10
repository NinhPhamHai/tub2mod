.class Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$5;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->setSearchEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->access$1400(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
