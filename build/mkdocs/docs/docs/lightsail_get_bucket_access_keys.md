<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_bucket_access_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the existing access key IDs for the specified Amazon Lightsail bucket

### Description

Returns the existing access key IDs for the specified Amazon Lightsail
bucket.

This action does not return the secret access key value of an access
key. You can get a secret access key only when you create it from the
response of the `create_bucket_access_key` action. If you lose the
secret access key, you must create a new access key.

### Usage

    lightsail_get_bucket_access_keys(bucketName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_bucket_access_keys_:_bucketName">bucketName</code></td>
<td><p>[required] The name of the bucket for which to return access
keys.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accessKeys = list(
        list(
          accessKeyId = "string",
          secretAccessKey = "string",
          status = "Active"|"Inactive",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUsed = list(
            lastUsedDate = as.POSIXct(
              "2015-01-01"
            ),
            region = "string",
            serviceName = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_bucket_access_keys(
      bucketName = "string"
    )
