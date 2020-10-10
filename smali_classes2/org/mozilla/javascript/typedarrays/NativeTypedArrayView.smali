.class public abstract Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "NativeTypedArrayView.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lorg/mozilla/javascript/ExternalArrayData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;",
        "Ljava/util/List<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Lorg/mozilla/javascript/ExternalArrayData;"
    }
.end annotation


# static fields
.field private static final Id_BYTES_PER_ELEMENT:I = 0xb

.field private static final Id_constructor:I = 0x1

.field private static final Id_get:I = 0x2

.field private static final Id_length:I = 0xa

.field private static final Id_set:I = 0x3

.field private static final Id_subarray:I = 0x4

.field private static final MAX_INSTANCE_ID:I = 0xb

.field protected static final MAX_PROTOTYPE_ID:I = 0x4


# instance fields
.field protected final length:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;III)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    .line 45
    iput p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method private js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 4

    const/4 v0, 0x0

    .line 109
    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    sget-object p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUFFER:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {p0, p1, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/Number;

    if-nez v1, :cond_d

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 118
    :cond_1
    aget-object v1, p3, v0

    instance-of v1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz v1, :cond_3

    .line 120
    aget-object p3, p3, v0

    check-cast p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 121
    iget v1, p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v2

    mul-int v1, v1, v2

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    .line 122
    iget p2, p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 124
    :goto_0
    iget p2, p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p2, :cond_2

    .line 125
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 129
    :cond_3
    aget-object v1, p3, v0

    instance-of v1, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 131
    aget-object p1, p3, v0

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    .line 132
    invoke-static {p3, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_4

    aget-object p2, p3, v2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :cond_4
    const/4 p2, 0x2

    .line 135
    invoke-static {p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    aget-object p2, p3, p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p3

    mul-int p2, p2, p3

    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_1
    const-string p3, "RangeError"

    if-ltz v0, :cond_9

    .line 141
    iget-object v1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length v2, v1

    if-gt v0, v2, :cond_9

    if-ltz p2, :cond_8

    add-int v2, v0, p2

    .line 144
    array-length v1, v1

    if-gt v2, v1, :cond_8

    .line 147
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_7

    .line 150
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    rem-int v1, p2, v1

    if-nez v1, :cond_6

    .line 154
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p3

    div-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "offset and buffer must be a multiple of the byte size"

    .line 151
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "offset must be a multiple of the byte size"

    .line 148
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "length out of range"

    .line 145
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "offset out of range"

    .line 142
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 156
    :cond_a
    aget-object v1, p3, v0

    instance-of v1, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_c

    .line 158
    aget-object p3, p3, v0

    check-cast p3, Ljava/util/List;

    .line 159
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v3

    mul-int v1, v1, v3

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    .line 160
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 162
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 163
    invoke-virtual {p1, v0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v2

    goto :goto_2

    :cond_b
    return-object p1

    :cond_c
    const-string p1, "Error"

    const-string p2, "invalid argument"

    .line 169
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 114
    :cond_d
    :goto_3
    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p3

    .line 115
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int v1, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1, v0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1
.end method

.method private js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Ljava/lang/Object;
    .locals 4

    if-gez p3, :cond_0

    .line 217
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr p3, v0

    :cond_0
    if-gez p4, :cond_1

    .line 218
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr p4, v0

    :cond_1
    const/4 v0, 0x0

    .line 221
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 222
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int/2addr p4, p3

    .line 223
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 224
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int p3, p3, v1

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 226
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    const/4 p3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, p3

    invoke-virtual {p1, p2, v1, v2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .locals 2

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "ArrayBuffer"

    invoke-virtual {p1, p2, p3, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p1
.end method

.method private setRange(Lorg/mozilla/javascript/NativeArray;I)V
    .locals 3

    .line 201
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    const-string v1, "RangeError"

    if-gt p2, v0, :cond_2

    .line 204
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt v0, v2, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "offset + length out of range"

    .line 205
    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "offset out of range"

    .line 202
    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .locals 4

    .line 175
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    const-string v1, "RangeError"

    if-ge p2, v0, :cond_4

    .line 179
    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr v0, p2

    if-gt v2, v0, :cond_3

    .line 183
    iget-object v0, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 185
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 186
    :goto_0
    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 187
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    :goto_1
    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v3, v1, :cond_2

    add-int v1, v3, p2

    .line 190
    aget-object v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_1
    :goto_2
    iget v0, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v3, v0, :cond_2

    add-int v0, v3, p2

    .line 194
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    const-string p1, "source array too long"

    .line 180
    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4
    const-string p1, "offset out of range"

    .line 176
    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 576
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 570
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 582
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected checkIndex(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 87
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public clear()V
    .locals 1

    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 450
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public delete(I)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 515
    :try_start_0
    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    .line 516
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 519
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_2

    .line 520
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 237
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 240
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    const-string v3, "invalid arguments"

    const-string v4, "Error"

    const/4 v5, 0x0

    if-eq v0, v2, :cond_a

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 276
    array-length v0, p5

    if-lez v0, :cond_1

    .line 277
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 278
    aget-object p4, p5, v5

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p4

    .line 279
    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object p5, p5, v1

    invoke-static {p5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p5

    goto :goto_0

    :cond_0
    iget p5, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    .line 280
    :goto_0
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 282
    :cond_1
    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 285
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_3
    array-length p2, p5

    if-lez p2, :cond_9

    .line 254
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    .line 255
    aget-object p2, p5, v5

    instance-of p2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz p2, :cond_5

    .line 256
    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_4

    aget-object p2, p5, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 257
    :goto_1
    aget-object p3, p5, v5

    check-cast p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    .line 258
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    .line 260
    :cond_5
    aget-object p2, p5, v5

    instance-of p2, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_7

    .line 261
    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_6

    aget-object p2, p5, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 262
    :goto_2
    aget-object p3, p5, v5

    check-cast p3, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/NativeArray;I)V

    .line 263
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    .line 265
    :cond_7
    aget-object p2, p5, v5

    instance-of p2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_8

    .line 267
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    .line 269
    :cond_8
    invoke-static {p5, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 270
    aget-object p2, p5, v5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    aget-object p3, p5, v1

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 273
    :cond_9
    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 246
    :cond_a
    array-length p2, p5

    if-lez p2, :cond_b

    .line 247
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    aget-object p2, p5, v5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 249
    :cond_b
    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 243
    :cond_c
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    .line 238
    :cond_d
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BYTES_PER_ELEMENT"

    invoke-virtual {p1, v1, p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 3

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/16 v0, 0xa

    const-string v2, "length"

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    const/16 v0, 0xb

    const-string v2, "BYTES_PER_ELEMENT"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    .line 388
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    .line 393
    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x5

    .line 395
    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 8

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 313
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x67

    const/16 v6, 0x65

    const/16 v7, 0x74

    if-ne v0, v5, :cond_0

    .line 314
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const/16 v5, 0x73

    if-ne v0, v5, :cond_3

    .line 315
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    const-string v1, "subarray"

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    const-string v1, "constructor"

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, p1, :cond_4

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayElement(I)Ljava/lang/Object;
    .locals 0

    .line 413
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayLength()I
    .locals 1

    .line 424
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public abstract getBytesPerElement()I
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    .line 76
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 77
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 360
    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "BYTES_PER_ELEMENT"

    return-object p1

    :cond_1
    const-string p1, "length"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 373
    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 369
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    if-lez p1, :cond_0

    .line 59
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 534
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 535
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 461
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    .line 462
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v1, "subarray"

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "set"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "get"

    goto :goto_1

    :cond_3
    const-string v0, "constructor"

    .line 300
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 438
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 543
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method protected abstract js_get(I)Ljava/lang/Object;
.end method

.method protected abstract js_set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 472
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 473
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 555
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0

    .line 556
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 600
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 606
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 612
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 618
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayElement(ILjava/lang/Object;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 432
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 564
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 483
    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 484
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_0

    .line 485
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .line 495
    array-length v0, p1

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 501
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_1

    .line 503
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    :catch_0
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    :cond_1
    return-object p1
.end method
