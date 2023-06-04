<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_list_identity_pool_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of identity pools registered with Cognito

### Description

Gets a list of identity pools registered with Cognito.

ListIdentityPoolUsage can only be called with developer credentials. You
cannot make this API call with the temporary user credentials provided
by Cognito Identity.

### Usage

    cognitosync_list_identity_pool_usage(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_list_identity_pool_usage_:_NextToken">NextToken</code></td>
<td><p>A pagination token for obtaining the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_identity_pool_usage_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolUsages = list(
        list(
          IdentityPoolId = "string",
          SyncSessionsCount = 123,
          DataStorage = 123,
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      MaxResults = 123,
      Count = 123,
      NextToken = "string"
    )

### Request syntax

    svc$list_identity_pool_usage(
      NextToken = "string",
      MaxResults = 123
    )
