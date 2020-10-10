.class public final Lcom/google/android/gms/internal/ads/zzyw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzyw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzabv:Z

.field public final zzabw:Z

.field public final zzabx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->getStartMuted()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->getCustomControlsRequested()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->getClickToExpandRequested()Z

    move-result p1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyw;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabv:Z

    .line 9
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabw:Z

    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabx:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabv:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabw:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzabx:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
