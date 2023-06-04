<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_list_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists API key resources in your Amazon Web Services account

### Description

Lists API key resources in your Amazon Web Services account.

The API keys feature is in preview. We may add, change, or remove
features before announcing general availability. For more information,
see [Using API
keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).

### Usage

    locationservice_list_keys(Filter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="locationservice_list_keys_:_Filter">Filter</code></td>
<td><p>Optionally filter the list to only <code>Active</code> or
<code>Expired</code> API keys.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_list_keys_:_MaxResults">MaxResults</code></td>
<td><p>An optional limit for the number of resources returned in a
single call.</p>
<p>Default value: <code>100</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_list_keys_:_NextToken">NextToken</code></td>
<td><p>The pagination token specifying which page of results to return
in the response. If no token is provided, the default page is the first
page.</p>
<p>Default value: <code>null</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          ExpireTime = as.POSIXct(
            "2015-01-01"
          ),
          KeyName = "string",
          Restrictions = list(
            AllowActions = list(
              "string"
            ),
            AllowReferers = list(
              "string"
            ),
            AllowResources = list(
              "string"
            )
          ),
          UpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_keys(
      Filter = list(
        KeyStatus = "Active"|"Expired"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
