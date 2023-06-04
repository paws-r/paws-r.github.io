<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_trails</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists trails that are in the current account

### Description

Lists trails that are in the current account.

### Usage

    cloudtrail_list_trails(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_list_trails_:_NextToken">NextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call. This token must be passed in with the same parameters that
were specified in the original call. For example, if the original call
specified an AttributeKey of 'Username' with a value of 'root', the call
with NextToken should include those same parameters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Trails = list(
        list(
          TrailARN = "string",
          Name = "string",
          HomeRegion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_trails(
      NextToken = "string"
    )
