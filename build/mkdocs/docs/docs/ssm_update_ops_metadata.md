<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_ops_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Web Services Systems Manager calls this API operation when you edit OpsMetadata in Application Manager

### Description

Amazon Web Services Systems Manager calls this API operation when you
edit OpsMetadata in Application Manager.

### Usage

    ssm_update_ops_metadata(OpsMetadataArn, MetadataToUpdate, KeysToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_ops_metadata_:_OpsMetadataArn">OpsMetadataArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the OpsMetadata
Object to update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_metadata_:_MetadataToUpdate">MetadataToUpdate</code></td>
<td><p>Metadata to add to an OpsMetadata object.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_ops_metadata_:_KeysToDelete">KeysToDelete</code></td>
<td><p>The metadata keys to delete from the OpsMetadata object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpsMetadataArn = "string"
    )

### Request syntax

    svc$update_ops_metadata(
      OpsMetadataArn = "string",
      MetadataToUpdate = list(
        list(
          Value = "string"
        )
      ),
      KeysToDelete = list(
        "string"
      )
    )
