.class final enum Lio/grpc/Context$DirectExecutor;
.super Ljava/lang/Enum;
.source "Context.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DirectExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/Context$DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/Context$DirectExecutor;

.field public static final enum INSTANCE:Lio/grpc/Context$DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1024
    new-instance v0, Lio/grpc/Context$DirectExecutor;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lio/grpc/Context$DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/Context$DirectExecutor;->INSTANCE:Lio/grpc/Context$DirectExecutor;

    const/4 v0, 0x1

    .line 1023
    new-array v0, v0, [Lio/grpc/Context$DirectExecutor;

    sget-object v2, Lio/grpc/Context$DirectExecutor;->INSTANCE:Lio/grpc/Context$DirectExecutor;

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/Context$DirectExecutor;->$VALUES:[Lio/grpc/Context$DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1023
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/Context$DirectExecutor;
    .locals 1

    .line 1023
    const-class v0, Lio/grpc/Context$DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/Context$DirectExecutor;

    return-object p0
.end method

.method public static values()[Lio/grpc/Context$DirectExecutor;
    .locals 1

    .line 1023
    sget-object v0, Lio/grpc/Context$DirectExecutor;->$VALUES:[Lio/grpc/Context$DirectExecutor;

    invoke-virtual {v0}, [Lio/grpc/Context$DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/Context$DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1028
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Context.DirectExecutor"

    return-object v0
.end method