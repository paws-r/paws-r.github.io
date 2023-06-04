<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_list_associated_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the groups that the specified canary is associated with

### Description

Returns a list of the groups that the specified canary is associated
with. The canary that you specify must be in the current Region.

### Usage

    synthetics_list_associated_groups(NextToken, MaxResults, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_list_associated_groups_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent operation to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_list_associated_groups_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many groups are returned each
time you use the <code>list_associated_groups</code> operation. If you
omit this parameter, the default of 20 is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_list_associated_groups_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the canary that you want to view groups
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          Id = "string",
          Name = "string",
          Arn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associated_groups(
      NextToken = "string",
      MaxResults = 123,
      ResourceArn = "string"
    )
