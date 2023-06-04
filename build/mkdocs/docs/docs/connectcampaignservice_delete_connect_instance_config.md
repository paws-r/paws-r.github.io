<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_delete_connect_instance_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a connect instance config from the specified AWS account

### Description

Deletes a connect instance config from the specified AWS account.

### Usage

    connectcampaignservice_delete_connect_instance_config(connectInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_delete_connect_instance_config_:_connectInstanceId">connectInstanceId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connect_instance_config(
      connectInstanceId = "string"
    )
