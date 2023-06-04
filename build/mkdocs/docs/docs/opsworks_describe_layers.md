<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_layers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of one or more layers in a specified stack

### Description

Requests a description of one or more layers in a specified stack.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_layers(StackId, LayerIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_describe_layers_:_StackId">StackId</code></td>
<td><p>The stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_describe_layers_:_LayerIds">LayerIds</code></td>
<td><p>An array of layer IDs that specify the layers to be described. If
you omit this parameter, <code>describe_layers</code> returns a
description of every layer in the specified stack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Layers = list(
        list(
          Arn = "string",
          StackId = "string",
          LayerId = "string",
          Type = "aws-flow-ruby"|"ecs-cluster"|"java-app"|"lb"|"web"|"php-app"|"rails-app"|"nodejs-app"|"memcached"|"db-master"|"monitoring-master"|"custom",
          Name = "string",
          Shortname = "string",
          Attributes = list(
            "string"
          ),
          CloudWatchLogsConfiguration = list(
            Enabled = TRUE|FALSE,
            LogStreams = list(
              list(
                LogGroupName = "string",
                DatetimeFormat = "string",
                TimeZone = "LOCAL"|"UTC",
                File = "string",
                FileFingerprintLines = "string",
                MultiLineStartPattern = "string",
                InitialPosition = "start_of_file"|"end_of_file",
                Encoding = "ascii"|"big5"|"big5hkscs"|"cp037"|"cp424"|"cp437"|"cp500"|"cp720"|"cp737"|"cp775"|"cp850"|"cp852"|"cp855"|"cp856"|"cp857"|"cp858"|"cp860"|"cp861"|"cp862"|"cp863"|"cp864"|"cp865"|"cp866"|"cp869"|"cp874"|"cp875"|"cp932"|"cp949"|"cp950"|"cp1006"|"cp1026"|"cp1140"|"cp1250"|"cp1251"|"cp1252"|"cp1253"|"cp1254"|"cp1255"|"cp1256"|"cp1257"|"cp1258"|"euc_jp"|"euc_jis_2004"|"euc_jisx0213"|"euc_kr"|"gb2312"|"gbk"|"gb18030"|"hz"|"iso2022_jp"|"iso2022_jp_1"|"iso2022_jp_2"|"iso2022_jp_2004"|"iso2022_jp_3"|"iso2022_jp_ext"|"iso2022_kr"|"latin_1"|"iso8859_2"|"iso8859_3"|"iso8859_4"|"iso8859_5"|"iso8859_6"|"iso8859_7"|"iso8859_8"|"iso8859_9"|"iso8859_10"|"iso8859_13"|"iso8859_14"|"iso8859_15"|"iso8859_16"|"johab"|"koi8_r"|"koi8_u"|"mac_cyrillic"|"mac_greek"|"mac_iceland"|"mac_latin2"|"mac_roman"|"mac_turkish"|"ptcp154"|"shift_jis"|"shift_jis_2004"|"shift_jisx0213"|"utf_32"|"utf_32_be"|"utf_32_le"|"utf_16"|"utf_16_be"|"utf_16_le"|"utf_7"|"utf_8"|"utf_8_sig",
                BufferDuration = 123,
                BatchCount = 123,
                BatchSize = 123
              )
            )
          ),
          CustomInstanceProfileArn = "string",
          CustomJson = "string",
          CustomSecurityGroupIds = list(
            "string"
          ),
          DefaultSecurityGroupNames = list(
            "string"
          ),
          Packages = list(
            "string"
          ),
          VolumeConfigurations = list(
            list(
              MountPoint = "string",
              RaidLevel = 123,
              NumberOfDisks = 123,
              Size = 123,
              VolumeType = "string",
              Iops = 123,
              Encrypted = TRUE|FALSE
            )
          ),
          EnableAutoHealing = TRUE|FALSE,
          AutoAssignElasticIps = TRUE|FALSE,
          AutoAssignPublicIps = TRUE|FALSE,
          DefaultRecipes = list(
            Setup = list(
              "string"
            ),
            Configure = list(
              "string"
            ),
            Deploy = list(
              "string"
            ),
            Undeploy = list(
              "string"
            ),
            Shutdown = list(
              "string"
            )
          ),
          CustomRecipes = list(
            Setup = list(
              "string"
            ),
            Configure = list(
              "string"
            ),
            Deploy = list(
              "string"
            ),
            Undeploy = list(
              "string"
            ),
            Shutdown = list(
              "string"
            )
          ),
          CreatedAt = "string",
          InstallUpdatesOnBoot = TRUE|FALSE,
          UseEbsOptimizedInstances = TRUE|FALSE,
          LifecycleEventConfiguration = list(
            Shutdown = list(
              ExecutionTimeout = 123,
              DelayUntilElbConnectionsDrained = TRUE|FALSE
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_layers(
      StackId = "string",
      LayerIds = list(
        "string"
      )
    )
