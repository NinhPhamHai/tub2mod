.class public abstract Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;
.super Ljava/lang/Object;
.source "Mission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient deleted:Z

.field public kind:C

.field public length:J

.field public source:Ljava/lang/String;

.field public storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->deleted:Z

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;->delete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    iget-wide v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/get/Mission;->storage:Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/do/a/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
