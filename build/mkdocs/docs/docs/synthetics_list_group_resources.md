<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_list_group_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns a list of the ARNs of the canaries that are associated with the specified group

### Description

This operation returns a list of the ARNs of the canaries that are
associated with the specified group.

### Usage

    synthetics_list_group_resources(NextToken, MaxResults, GroupIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_list_group_resources_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent operation to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_list_group_resources_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many canary ARNs are returned
each time you use the <code>list_group_resources</code> operation. If
you omit this parameter, the default of 20 is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_list_group_resources_:_GroupIdentifier">GroupIdentifier</code></td>
<td><p>[required] Specifies the group to return information for. You can
specify the group name, the ARN, or the group ID as the
<code>GroupIdentifier</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Resources = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_group_resources(
      NextToken = "string",
      MaxResults = 123,
      GroupIdentifier = "string"
    )
