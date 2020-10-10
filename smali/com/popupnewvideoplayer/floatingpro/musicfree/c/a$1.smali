.class Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$1;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;->sortCountries(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)I
    .locals 0

    .line 356
    invoke-virtual {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 353
    check-cast p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;

    check-cast p2, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;

    invoke-virtual {p0, p1, p2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/c/a$1;->compare(Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;Lcom/popupnewvideoplayer/floatingpro/musicfree/c/d;)I

    move-result p1

    return p1
.end method
