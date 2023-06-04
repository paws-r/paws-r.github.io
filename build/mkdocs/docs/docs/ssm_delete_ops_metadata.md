<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_ops_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete OpsMetadata related to an application

### Description

Delete OpsMetadata related to an application.

### Usage

    ssm_delete_ops_metadata(OpsMetadataArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_ops_metadata_:_OpsMetadataArn">OpsMetadataArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an OpsMetadata
Object to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_ops_metadata(
      OpsMetadataArn = "string"
    )
