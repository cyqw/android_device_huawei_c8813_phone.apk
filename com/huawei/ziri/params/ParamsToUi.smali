.class public Lcom/huawei/ziri/params/ParamsToUi;
.super Ljava/lang/Object;
.source "ParamsToUi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/ziri/params/ParamsToUi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdType:I

.field private mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/ziri/params/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayContent:Ljava/lang/String;

.field private mDisplayType:I

.field private mModelState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    new-instance v0, Lcom/huawei/ziri/params/ParamsToUi$1;

    invoke-direct {v0}, Lcom/huawei/ziri/params/ParamsToUi$1;-><init>()V

    sput-object v0, Lcom/huawei/ziri/params/ParamsToUi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mCmdType:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mDisplayType:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mModelState:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mDisplayContent:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .local v1, size:I
    if-lez v1, :cond_39

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v1, :cond_39

    .line 172
    iget-object v2, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    sget-object v3, Lcom/huawei/ziri/params/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 175
    .end local v0           #i:I
    :cond_39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdType()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/huawei/ziri/params/ParamsToUi;->mCmdType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 280
    iget v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mCmdType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mDisplayType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mModelState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mDisplayContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 285
    iget-object v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 288
    iget-object v1, p0, Lcom/huawei/ziri/params/ParamsToUi;->mContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ziri/params/Contact;

    invoke-virtual {v1, p1, v2}, Lcom/huawei/ziri/params/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 291
    .end local v0           #i:I
    :cond_39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :cond_3c
    return-void
.end method
