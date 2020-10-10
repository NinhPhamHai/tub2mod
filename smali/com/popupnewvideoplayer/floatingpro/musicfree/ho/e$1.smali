.class final Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e$1;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;
    .locals 1

    .line 60
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    invoke-direct {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e$1;->createFromParcel(Landroid/os/Parcel;)Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;
    .locals 0

    .line 65
    new-array p1, p1, [Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e$1;->newArray(I)[Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    move-result-object p1

    return-object p1
.end method
