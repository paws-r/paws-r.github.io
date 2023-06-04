<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_ops_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Web Services Systems Manager calls this API operation when displaying all Application Manager OpsMetadata objects or blobs

### Description

Amazon Web Services Systems Manager calls this API operation when
displaying all Application Manager OpsMetadata objects or blobs.

### Usage

    ssm_list_ops_metadata(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_list_ops_metadata_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the number of OpsMetadata objects
returned by the call.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_ops_metadata_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_ops_metadata_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpsMetadataList = list(
        list(
          ResourceId = "string",
          OpsMetadataArn = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedUser = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_ops_metadata(
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
