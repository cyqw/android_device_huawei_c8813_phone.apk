.class public Lcom/android/phone/ManageConferenceUtils_DSDA;
.super Lcom/android/phone/ManageConferenceUtils;
.source "ManageConferenceUtils_DSDA.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils_DSDA;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .parameter "cm"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 24
    return-void
.end method


# virtual methods
.method public SetInCallInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 28
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 29
    return-void
.end method

.method protected getManageConferenceViewStub(I)Landroid/view/ViewStub;
    .registers 3
    .parameter "id"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallFragment;->getManageConferenceGroup(I)Landroid/view/ViewStub;

    move-result-object v0

    return-object v0
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
    .line 36
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected setOnclickListener()V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mButtonManageConferenceDone:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
