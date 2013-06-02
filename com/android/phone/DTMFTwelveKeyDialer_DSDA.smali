.class public Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;
.super Lcom/android/phone/DTMFTwelveKeyDialer;
.source "DTMFTwelveKeyDialer_DSDA.java"


# instance fields
.field f:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method public constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 2
    .parameter "dialerView"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    .line 15
    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 48
    return-void
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->f:Lcom/android/phone/InCallFragment;

    .line 19
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 20
    return-void
.end method
