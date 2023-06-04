<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_resource_profile_artifacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about objects that were selected from an S3 bucket for automated sensitive data discovery

### Description

Retrieves information about objects that were selected from an S3 bucket
for automated sensitive data discovery.

### Usage

    macie2_list_resource_profile_artifacts(nextToken, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_resource_profile_artifacts_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_resource_profile_artifacts_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 bucket that
the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      artifacts = list(
        list(
          arn = "string",
          classificationResultStatus = "string",
          sensitive = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_resource_profile_artifacts(
      nextToken = "string",
      resourceArn = "string"
    )
