<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_get_connect_instance_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the specific Connect instance config

### Description

Get the specific Connect instance config.

### Usage

    connectcampaignservice_get_connect_instance_config(connectInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_get_connect_instance_config_:_connectInstanceId">connectInstanceId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectInstanceConfig = list(
        connectInstanceId = "string",
        encryptionConfig = list(
          enabled = TRUE|FALSE,
          encryptionType = "KMS",
          keyArn = "string"
        ),
        serviceLinkedRoleArn = "string"
      )
    )

### Request syntax

    svc$get_connect_instance_config(
      connectInstanceId = "string"
    )
