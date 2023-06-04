<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_list_associated_stacks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the name of the stack with which the specified fleet is associated

### Description

Retrieves the name of the stack with which the specified fleet is
associated.

### Usage

    appstream_list_associated_stacks(FleetName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_list_associated_stacks_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_list_associated_stacks_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Names = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associated_stacks(
      FleetName = "string",
      NextToken = "string"
    )
