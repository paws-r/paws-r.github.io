<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_list_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs

### Description

Returns a list of all groups in the account, displaying their names,
unique IDs, and ARNs. The groups from all Regions are returned.

### Usage

    synthetics_list_groups(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_list_groups_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent operation to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_list_groups_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many groups are returned each
time you use the <code>list_groups</code> operation. If you omit this
parameter, the default of 20 is used.</p></td>
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

    svc$list_groups(
      NextToken = "string",
      MaxResults = 123
    )
