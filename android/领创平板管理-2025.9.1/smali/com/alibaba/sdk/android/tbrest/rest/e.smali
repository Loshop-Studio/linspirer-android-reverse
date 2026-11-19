.class public Lcom/alibaba/sdk/android/tbrest/rest/e;
.super Ljava/lang/Object;
.source "RestReqDataBuilder.java"


# static fields
.field public static c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/sdk/android/tbrest/rest/e;->c:J

    return-void
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/tbrest/rest/d;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/tbrest/rest/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "-"

    const/4 v3, 0x0

    if-nez p7, :cond_0

    return-object v3

    .line 109
    :cond_0
    :try_start_0
    iget-object v4, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 110
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v3

    .line 111
    :cond_1
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getNetworkType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 112
    aget-object v6, v5, v6

    .line 113
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    if-eqz v6, :cond_2

    const-string v7, "Wi-Fi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 114
    aget-object v5, v5, v8

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-lez v7, :cond_3

    move-wide/from16 v7, p4

    goto :goto_1

    .line 115
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 116
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static/range {p6 .. p6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-static/range {p8 .. p8}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-static/range {p9 .. p9}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-static/range {p10 .. p10}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-static/range {p11 .. p11}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "5.0.1"

    .line 125
    iget-object v3, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p4, v14

    .line 126
    iget-object v14, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    sget-object v16, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 p5, v13

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p6, v12

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p7, v11

    .line 129
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v17, v10

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v8

    .line 131
    iget-object v8, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v9

    .line 132
    iget-object v9, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v7

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v2

    .line 136
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p1, v2

    .line 137
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p8, v7

    .line 138
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 p9, v7

    .line 139
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p10, v7

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p11, v7

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    iget-object v0, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    const-string v21, "Android"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v7

    const-string v7, "aliyunos"

    if-eqz v0, :cond_4

    .line 143
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v7, v21

    .line 144
    :goto_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 p0, v0

    const-string v0, "mini"

    move-object/from16 v21, v0

    const-string v0, "1.0"

    move-object/from16 v23, v0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    sget-wide v5, Lcom/alibaba/sdk/android/tbrest/rest/e;->c:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    .line 148
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "||"

    .line 149
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v24

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v25

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p8

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, p1

    .line 162
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p9

    .line 163
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p10

    .line 164
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, v20

    .line 165
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, p11

    .line 166
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v22

    .line 167
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, p0

    .line 169
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v21

    .line 170
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v23

    .line 171
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p7

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p6

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p5

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p4

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v5, "stm_x"

    .line 189
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;-><init>()V

    const/16 v20, 0x0

    const-string v27, ""

    move-object/from16 v19, p2

    move-object/from16 v21, v1

    move-object/from16 v22, p3

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v4

    .line 191
    invoke-static/range {v19 .. v28}, Lcom/alibaba/sdk/android/tbrest/rest/RestUrlWrapper;->getSignedTransferUrl(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/tbrest/rest/d;->b(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 194
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "-"

    const/4 v3, 0x0

    if-nez p5, :cond_0

    return-object v3

    .line 9
    :cond_0
    :try_start_0
    iget-object v4, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 10
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v3

    .line 11
    :cond_1
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getNetworkType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 12
    aget-object v6, v5, v6

    .line 13
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    if-eqz v6, :cond_2

    const-string v7, "Wi-Fi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 14
    aget-object v3, v5, v8

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v5, p2, v7

    if-lez v5, :cond_3

    move-wide/from16 v7, p2

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 16
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static/range {p4 .. p4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-static/range {p6 .. p6}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static/range {p7 .. p7}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-static/range {p8 .. p8}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 22
    invoke-static/range {p9 .. p9}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 23
    iget-object v13, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24
    iget-object v14, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 25
    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v15}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 26
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 p2, v12

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p3, v11

    .line 29
    iget-object v11, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 p4, v10

    .line 30
    iget-object v10, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p5, v9

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v8

    .line 34
    iget-object v8, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v7

    .line 35
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v5

    .line 36
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v2

    .line 37
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 p1, v2

    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p6, v2

    .line 40
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    .line 41
    sget-object v20, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 p7, v5

    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 p8, v5

    const-string v5, "mini"

    move-object/from16 p9, v5

    const-string v5, "1.0"

    .line 42
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    iget-object v0, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v0

    const-string v0, "y"

    move-object/from16 v20, v0

    const-string v0, "a"

    if-eqz v2, :cond_4

    move-object/from16 v21, v4

    :try_start_1
    const-string v4, "aliyunos"

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, v20

    goto :goto_1

    :cond_4
    move-object/from16 v21, v4

    :cond_5
    move-object v2, v0

    .line 46
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 47
    sget-object v22, Lcom/alibaba/sdk/android/tbrest/rest/a;->a:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->b:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "b"

    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->c:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "c"

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->d:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "d"

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->e:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "e"

    invoke-virtual {v4, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->f:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "f"

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->g:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "g"

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->h:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "h"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->i:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "i"

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->j:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "j"

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->k:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "k"

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->l:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "l"

    move-object/from16 v3, p7

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->m:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "m"

    move-object/from16 v3, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->n:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "n"

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->o:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "o"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->p:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "p"

    move-object/from16 v6, p6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->q:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "q"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->r:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "r"

    move-object/from16 v2, p8

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->s:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "s"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->t:Lcom/alibaba/sdk/android/tbrest/rest/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/alibaba/sdk/android/tbrest/rest/e;->c:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "t"

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->u:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "u"

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->v:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "v"

    move-object/from16 v5, p9

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->w:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "w"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->x:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "x"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->y:Lcom/alibaba/sdk/android/tbrest/rest/a;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->z:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "z"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->A:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "A"

    move-object/from16 v2, p0

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->B:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "B"

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->C:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "C"

    move-object/from16 v2, v17

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->D:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "D"

    move-object/from16 v2, v16

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->E:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "E"

    move-object/from16 v2, p5

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->F:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "F"

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->G:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "G"

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v0, "H"

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 82
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    const-string v0, ""

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 6
    aget-char v2, p0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/rest/a;->values()[Lcom/alibaba/sdk/android/tbrest/rest/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "||"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    .line 85
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    const-string v1, "H"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    sget-object v2, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    sget-object v2, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 94
    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 95
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 98
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v6

    :goto_4
    const-string v8, "StackTrace=====>"

    const-string v9, "="

    const-string v10, "StackTrace"

    if-eqz v1, :cond_6

    .line 99
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 101
    :cond_5
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    move v1, v3

    goto :goto_3

    .line 102
    :cond_6
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, ","

    if-eqz v10, :cond_7

    .line 103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 104
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 107
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    .line 108
    invoke-static {p0, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_9
    return-object p0
.end method
