<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists datasets for an identity

### Description

Lists datasets for an identity. With Amazon Cognito Sync, each identity
has access only to its own data. Thus, the credentials used to make this
API call need to have access to the identity data.

ListDatasets can be called with temporary user credentials provided by
Cognito Identity or with developer credentials. You should use the
Cognito Identity credentials to make this API call.

### Usage

    cognitosync_list_datasets(IdentityPoolId, IdentityId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_list_datasets_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_datasets_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_list_datasets_:_NextToken">NextToken</code></td>
<td><p>A pagination token for obtaining the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_datasets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Datasets = list(
        list(
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
      ),
      Count = 123,
      NextToken = "string"
    )

### Request syntax

    svc$list_datasets(
      IdentityPoolId = "string",
      IdentityId = "string",
      NextToken = "string",
      MaxResults = 123
    )
