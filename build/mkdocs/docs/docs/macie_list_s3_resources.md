<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_list_s3_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Lists all the S3 resources associated with Amazon Macie Classic

### Description

(Discontinued) Lists all the S3 resources associated with Amazon Macie
Classic. If `memberAccountId` isn't specified, the action lists the S3
resources associated with Macie Classic for the current Macie Classic
administrator account. If `memberAccountId` is specified, the action
lists the S3 resources associated with Macie Classic for the specified
member account.

### Usage

    macie_list_s3_resources(memberAccountId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_list_s3_resources_:_memberAccountId">memberAccountId</code></td>
<td><p>(Discontinued) The Amazon Macie Classic member account ID whose
associated S3 resources you want to list.</p></td>
</tr>
<tr class="even">
<td><code id="macie_list_s3_resources_:_nextToken">nextToken</code></td>
<td><p>(Discontinued) Use this parameter when paginating results. Set
its value to null on your first call to the
<code>list_s3_resources</code> action. Subsequent calls to the action
fill <code>nextToken</code> in the request with the value of
<code>nextToken</code> from the previous response to continue listing
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie_list_s3_resources_:_maxResults">maxResults</code></td>
<td><p>(Discontinued) Use this parameter to indicate the maximum number
of items that you want in the response. The default value is
250.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      s3Resources = list(
        list(
          bucketName = "string",
          prefix = "string",
          classificationType = list(
            oneTime = "FULL"|"NONE",
            continuous = "FULL"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_s3_resources(
      memberAccountId = "string",
      nextToken = "string",
      maxResults = 123
    )
