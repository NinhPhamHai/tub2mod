.class public final Lio/opencensus/trace/SpanId;
.super Ljava/lang/Object;
.source "SpanId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/trace/SpanId;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lio/opencensus/trace/SpanId;


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lio/opencensus/trace/SpanId;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/SpanId;-><init>(J)V

    sput-object v0, Lio/opencensus/trace/SpanId;->INVALID:Lio/opencensus/trace/SpanId;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lio/opencensus/trace/SpanId;->id:J

    return-void
.end method


# virtual methods
.method public compareTo(Lio/opencensus/trace/SpanId;)I
    .locals 4

    .line 235
    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    iget-wide v2, p1, Lio/opencensus/trace/SpanId;->id:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lio/opencensus/trace/SpanId;

    invoke-virtual {p0, p1}, Lio/opencensus/trace/SpanId;->compareTo(Lio/opencensus/trace/SpanId;)I

    move-result p1

    return p1
.end method

.method public copyLowerBase16To([CI)V
    .locals 2

    .line 181
    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToBase16String(J[CI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 213
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/SpanId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 217
    :cond_1
    check-cast p1, Lio/opencensus/trace/SpanId;

    .line 218
    iget-wide v3, p0, Lio/opencensus/trace/SpanId;->id:J

    iget-wide v5, p1, Lio/opencensus/trace/SpanId;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 224
    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toLowerBase16()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 202
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Lio/opencensus/trace/SpanId;->copyLowerBase16To([CI)V

    .line 204
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanId{spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/opencensus/trace/SpanId;->toLowerBase16()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
