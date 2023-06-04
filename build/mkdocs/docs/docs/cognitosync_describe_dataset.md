<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_describe_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets meta data about a dataset by identity and dataset name

### Description

Gets meta data about a dataset by identity and dataset name. With Amazon
Cognito Sync, each identity has access only to its own data. Thus, the
credentials used to make this API call need to have access to the
identity data.

This API can be called with temporary user credentials provided by
Cognito Identity or with developer credentials. You should use Cognito
Identity credentials to make this API call.

### Usage

    cognitosync_describe_dataset(IdentityPoolId, IdentityId, DatasetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_describe_dataset_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_describe_dataset_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_describe_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] A string of up to 128 characters. Allowed characters
are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Dataset = list(
        IdentityId = "string",
        DatasetName = "string",
        CreationDate = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedBy = "string",
        DataStorage = 123,
        NumRecords = 123
      )
    )

### Request syntax

    svc$describe_dataset(
      IdentityPoolId = "string",
      IdentityId = "string",
      DatasetName = "string"
    )
