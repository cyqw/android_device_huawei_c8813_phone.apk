.class final Lcom/huawei/ziri/params/ParamsFromUi$1;
.super Ljava/lang/Object;
.source "ParamsFromUi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/params/ParamsFromUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/ziri/params/ParamsFromUi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/ziri/params/ParamsFromUi;
    .registers 3
    .parameter "source"

    .prologue
    .line 98
    new-instance v0, Lcom/huawei/ziri/params/ParamsFromUi;

    invoke-direct {v0, p1}, Lcom/huawei/ziri/params/ParamsFromUi;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/huawei/ziri/params/ParamsFromUi$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/ziri/params/ParamsFromUi;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/ziri/params/ParamsFromUi;
    .registers 3
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Lcom/huawei/ziri/params/ParamsFromUi;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/huawei/ziri/params/ParamsFromUi$1;->newArray(I)[Lcom/huawei/ziri/params/ParamsFromUi;

    move-result-object v0

    return-object v0
.end method
