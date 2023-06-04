<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_list_associated_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the name of the fleet that is associated with the specified stack

### Description

Retrieves the name of the fleet that is associated with the specified
stack.

### Usage

    appstream_list_associated_fleets(StackName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_list_associated_fleets_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_list_associated_fleets_:_NextToken">NextToken</code></td>
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

    svc$list_associated_fleets(
      StackName = "string",
      NextToken = "string"
    )
