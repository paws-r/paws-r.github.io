<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_list_discoverers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the discoverers

### Description

List the discoverers.

### Usage

    schemas_list_discoverers(DiscovererIdPrefix, Limit, NextToken,
      SourceArnPrefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_list_discoverers_:_DiscovererIdPrefix">DiscovererIdPrefix</code></td>
<td><p>Specifying this limits the results to only those discoverer IDs
that start with the specified prefix.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_list_discoverers_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="schemas_list_discoverers_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results to return. To
request the first page, leave NextToken empty. The token will expire in
24 hours, and cannot be shared with other accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_list_discoverers_:_SourceArnPrefix">SourceArnPrefix</code></td>
<td><p>Specifying this limits the results to only those ARNs that start
with the specified prefix.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Discoverers = list(
        list(
          DiscovererArn = "string",
          DiscovererId = "string",
          SourceArn = "string",
          State = "STARTED"|"STOPPED",
          CrossAccount = TRUE|FALSE,
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_discoverers(
      DiscovererIdPrefix = "string",
      Limit = 123,
      NextToken = "string",
      SourceArnPrefix = "string"
    )
