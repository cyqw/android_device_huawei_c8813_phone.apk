.class public Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 236
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar()V
    .registers 3

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_8

    .line 288
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 290
    :cond_8
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v1, :cond_f

    .line 291
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 293
    :cond_f
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v1, :cond_1c

    .line 295
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 296
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 297
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 300
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 301
    return-void
.end method


# virtual methods
.method public enableExpandedView(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_9

    .line 261
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 262
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 264
    :cond_9
    return-void
.end method

.method public enableNotificationAlerts(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_9

    .line 247
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 248
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 250
    :cond_9
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-eq v0, p1, :cond_9

    .line 276
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 277
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 279
    :cond_9
    return-void
.end method
