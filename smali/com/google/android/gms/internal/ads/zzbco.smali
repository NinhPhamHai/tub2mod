.class final Lcom/google/android/gms/internal/ads/zzbco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdug:Ljava/lang/String;

.field private final synthetic zzedb:Ljava/lang/String;

.field private final synthetic zzedc:I

.field private final synthetic zzedd:I

.field private final synthetic zzede:Z

.field private final synthetic zzedf:Lcom/google/android/gms/internal/ads/zzbcn;

.field private final synthetic zzedh:J

.field private final synthetic zzedi:J

.field private final synthetic zzedj:I

.field private final synthetic zzedk:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcn;Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedf:Lcom/google/android/gms/internal/ads/zzbcn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdug:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedd:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedh:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedi:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzede:Z

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedj:I

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdug:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedb:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedc:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedh:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bufferedDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedi:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzede:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedj:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedk:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerPreparedCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzedf:Lcom/google/android/gms/internal/ads/zzbcn;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Lcom/google/android/gms/internal/ads/zzbcn;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
