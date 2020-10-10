.class public Lcom/google/android/gms/gass/AdShield2Logger;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.3.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzgrx:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzsr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzup:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzsr;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/gass/AdShield2Logger;->zzup:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/gass/AdShield2Logger;->executor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/gass/AdShield2Logger;->zzgrx:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static createAdShield2Logger(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/gass/AdShield2Logger;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/gass/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gass/zzb;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/gass/AdShield2Logger;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/gass/AdShield2Logger;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;)V

    return-object v1
.end method

.method private final zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbm$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gass/AdShield2Logger;->zzup:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zzc(J)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    if-eqz p4, :cond_0

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzdem;->zza(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    .line 16
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    :cond_0
    if-eqz p5, :cond_1

    .line 18
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    :cond_1
    if-eqz p6, :cond_2

    .line 20
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbm$zza$zzb;->zzu()Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;

    move-result-object p4

    .line 23
    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;

    .line 24
    invoke-interface {p6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;

    .line 25
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbm$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzbm$zza$zzb$zza;)Lcom/google/android/gms/internal/ads/zzbm$zza$zza;

    goto :goto_0

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/gass/AdShield2Logger;->zzgrx:Lcom/google/android/gms/tasks/Task;

    iget-object p3, p0, Lcom/google/android/gms/gass/AdShield2Logger;->executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/gms/gass/zza;

    invoke-direct {p4, v0, p1}, Lcom/google/android/gms/gass/zza;-><init>(Lcom/google/android/gms/internal/ads/zzbm$zza$zza;I)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public logException(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/gass/AdShield2Logger;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public logSignals(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/gass/AdShield2Logger;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
