.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$5;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;->showCountryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e$5;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectCountry(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)V
    .locals 0

    .line 344
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->saveCountryCode(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/popupnewvideoplayer/floatingpro/musicfree/sp/SuperSp;->setCountrySuccess()V

    return-void
.end method
