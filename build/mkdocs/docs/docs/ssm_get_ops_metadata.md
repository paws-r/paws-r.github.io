<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_ops_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## View operational metadata related to an application in Application Manager

### Description

View operational metadata related to an application in Application
Manager.

### Usage

    ssm_get_ops_metadata(OpsMetadataArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_ops_metadata_:_OpsMetadataArn">OpsMetadataArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an OpsMetadata
Object to view.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_ops_metadata_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_get_ops_metadata_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceId = "string",
      Metadata = list(
        list(
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ops_metadata(
      OpsMetadataArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
