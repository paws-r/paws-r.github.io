<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specific dataset

### Description

Deletes the specific dataset. The dataset will be deleted permanently,
and the action can't be undone. Datasets that this dataset was merged
with will no longer report the merge. Any subsequent operation on this
dataset will result in a ResourceNotFoundException.

This API can be called with temporary user credentials provided by
Cognito Identity or with developer credentials.

### Usage

    cognitosync_delete_dataset(IdentityPoolId, IdentityId, DatasetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_delete_dataset_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_delete_dataset_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_delete_dataset_:_DatasetName">DatasetName</code></td>
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

    svc$delete_dataset(
      IdentityPoolId = "string",
      IdentityId = "string",
      DatasetName = "string"
    )
