.class final Lcom/huawei/ziri/params/ParamsToUi$1;
.super Ljava/lang/Object;
.source "ParamsToUi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ziri/params/ParamsToUi;
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
        "Lcom/huawei/ziri/params/ParamsToUi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/ziri/params/ParamsToUi;
    .registers 3
    .parameter "source"

    .prologue
    .line 150
    new-instance v0, Lcom/huawei/ziri/params/ParamsToUi;

    invoke-direct {v0, p1}, Lcom/huawei/ziri/params/ParamsToUi;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/huawei/ziri/params/ParamsToUi$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/ziri/params/ParamsToUi;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/ziri/params/ParamsToUi;
    .registers 3
    .parameter "size"

    .prologue
    .line 155
    new-array v0, p1, [Lcom/huawei/ziri/params/ParamsToUi;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/huawei/ziri/params/ParamsToUi$1;->newArray(I)[Lcom/huawei/ziri/params/ParamsToUi;

    move-result-object v0

    return-object v0
.end method
