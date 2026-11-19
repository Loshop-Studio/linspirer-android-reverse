.class public Lcom/huawei/hem/lf$b;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/database/Cursor;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lcom/huawei/hem/lf;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/lf;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lf$b;->d:Lcom/huawei/hem/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/lf$b;->b:Ljava/util/List;

    .line 3
    iget-object p1, p1, Lcom/huawei/hem/lf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM filedownloader"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/lf$b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$b;->a:Landroid/database/Cursor;

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/lf;->r(Landroid/database/Cursor;)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 4
    iput v1, p0, Lcom/huawei/hem/lf$b;->c:I

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lf$b;->b:Ljava/util/List;

    iget v1, p0, Lcom/huawei/hem/lf$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
