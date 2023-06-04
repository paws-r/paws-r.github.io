<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_workflows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists names of workflows created in the account

### Description

Lists names of workflows created in the account.

### Usage

    glue_list_workflows(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_workflows_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_workflows_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workflows = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workflows(
      NextToken = "string",
      MaxResults = 123
    )
