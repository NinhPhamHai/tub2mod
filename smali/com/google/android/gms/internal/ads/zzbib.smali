.class public final Lcom/google/android/gms/internal/ads/zzbib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzbdr;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfaz:Lcom/google/android/gms/internal/ads/zzbib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbib;->zzfaz:Lcom/google/android/gms/internal/ads/zzbib;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzafa()Lcom/google/android/gms/internal/ads/zzbib;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbib;->zzfaz:Lcom/google/android/gms/internal/ads/zzbib;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdr;

    return-object v0
.end method
