.class public final Lcom/android/camera/component/HdrUI;
.super Lcom/android/camera/component/UIComponent;
.source "HdrUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/HdrUI$4;
    }
.end annotation


# static fields
.field static final MSG_PHOTO_PROCESSED:I = 0x2

.field static final MSG_PROCESSING_PHOTO:I = 0x1

.field public static final NAME:Ljava/lang/String; = "HDR UI"


# instance fields
.field private m_HdrController:Lcom/android/camera/component/HdrController;

.field private m_IsCaptureUIOpen:Z

.field private m_IsEnteredFromAutoScene:Z

.field private m_IsModeEntered:Z

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 48
    const-string v0, "HDR UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HdrUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/HdrUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return p1
.end method

.method private closeCaptureUI()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 314
    :cond_0
    :goto_0
    return v3

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "HDR Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrController;

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    .line 309
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v2, 0x2710

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 312
    goto :goto_0
.end method

.method private onPhotoProcessed(Lcom/android/camera/CaptureHandle;Z)V
    .locals 3
    .parameter "captureHandle"
    .parameter "success"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    .line 193
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/HdrUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 194
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    .line 198
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 202
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    .line 204
    :cond_1
    return-void

    .line 197
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoProcessed() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPhotoProcessing(Z)V
    .locals 3
    .parameter "success"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 213
    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/HdrUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    .line 214
    .local v0, dialogManager:Lcom/android/camera/IProcessingDialogManager;
    if-eqz v0, :cond_1

    .line 215
    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    .line 219
    .end local v0           #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0       #dialogManager:Lcom/android/camera/IProcessingDialogManager;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoProcessing() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCaptureUI()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 234
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 248
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HdrUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$1;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HdrUI$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HdrUI$2;-><init>(Lcom/android/camera/component/HdrUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HdrUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$3;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 299
    return-void
.end method


# virtual methods
.method public enterHdrMode()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter HDR mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 80
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    .line 90
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitHdrMode()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 114
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 133
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/CaptureHandle;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/HdrUI;->onPhotoProcessed(Lcom/android/camera/CaptureHandle;Z)V

    goto :goto_0

    .line 138
    .end local v0           #params:[Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/HdrUI;->onPhotoProcessing(Z)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 174
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->setupPropertyChangedCallbacks()V

    .line 175
    return-void
.end method

.method public isHdrModeEntered()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method