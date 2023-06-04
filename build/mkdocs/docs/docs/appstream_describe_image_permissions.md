<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_image_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own

### Description

Retrieves a list that describes the permissions for shared AWS account
IDs on a private image that you own.

### Usage

    appstream_describe_image_permissions(Name, MaxResults,
      SharedAwsAccountIds, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_image_permissions_:_Name">Name</code></td>
<td><p>[required] The name of the private image for which to describe
permissions. The image must be one that you own.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_image_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_image_permissions_:_SharedAwsAccountIds">SharedAwsAccountIds</code></td>
<td><p>The 12-digit identifier of one or more AWS accounts with which
the image is shared.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_image_permissions_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      SharedImagePermissionsList = list(
        list(
          sharedAccountId = "string",
          imagePermissions = list(
            allowFleet = TRUE|FALSE,
            allowImageBuilder = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_image_permissions(
      Name = "string",
      MaxResults = 123,
      SharedAwsAccountIds = list(
        "string"
      ),
      NextToken = "string"
    )
