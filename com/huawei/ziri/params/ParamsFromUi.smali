.class public Lcom/huawei/ziri/params/ParamsFromUi;
.super Ljava/lang/Object;
.source "ParamsFromUi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/ziri/params/ParamsFromUi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdType:I

.field private mContact:Lcom/huawei/ziri/params/Contact;

.field private mSelectItemIndex:I

.field private mSmsBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    new-instance v0, Lcom/huawei/ziri/params/ParamsFromUi$1;

    invoke-direct {v0}, Lcom/huawei/ziri/params/ParamsFromUi$1;-><init>()V

    sput-object v0, Lcom/huawei/ziri/params/ParamsFromUi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/huawei/ziri/params/Contact;Ljava/lang/String;)V
    .registers 5
    .parameter "cmdType"
    .parameter "itemSelectNum"
    .parameter "contact"
    .parameter "smsBody"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mCmdType:I

    .line 129
    iput p2, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSelectItemIndex:I

    .line 130
    iput-object p4, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSmsBody:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mContact:Lcom/huawei/ziri/params/Contact;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mCmdType:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSelectItemIndex:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSmsBody:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/huawei/ziri/params/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ziri/params/Contact;

    iput-object v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mContact:Lcom/huawei/ziri/params/Contact;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 196
    iget v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mCmdType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSelectItemIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mSmsBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mContact:Lcom/huawei/ziri/params/Contact;

    if-eqz v0, :cond_19

    .line 200
    iget-object v0, p0, Lcom/huawei/ziri/params/ParamsFromUi;->mContact:Lcom/huawei/ziri/params/Contact;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ziri/params/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    :cond_19
    return-void
.end method
