<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_allow_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the settings and status of an allow list

### Description

Retrieves the settings and status of an allow list.

### Usage

    macie2_get_allow_list(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_allow_list_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      criteria = list(
        regex = "string",
        s3WordsList = list(
          bucketName = "string",
          objectKey = "string"
        )
      ),
      description = "string",
      id = "string",
      name = "string",
      status = list(
        code = "OK"|"S3_OBJECT_NOT_FOUND"|"S3_USER_ACCESS_DENIED"|"S3_OBJECT_ACCESS_DENIED"|"S3_THROTTLED"|"S3_OBJECT_OVERSIZE"|"S3_OBJECT_EMPTY"|"UNKNOWN_ERROR",
        description = "string"
      ),
      tags = list(
        "string"
      ),
      updatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_allow_list(
      id = "string"
    )
