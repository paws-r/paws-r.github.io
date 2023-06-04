<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_connect_client_add_ins</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of Amazon Connect client add-ins that have been created

### Description

Retrieves a list of Amazon Connect client add-ins that have been
created.

### Usage

    workspaces_describe_connect_client_add_ins(ResourceId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_connect_client_add_ins_:_ResourceId">ResourceId</code></td>
<td><p>[required] The directory identifier for which the client add-in
is configured.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_connect_client_add_ins_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_connect_client_add_ins_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AddIns = list(
        list(
          AddInId = "string",
          ResourceId = "string",
          Name = "string",
          URL = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_connect_client_add_ins(
      ResourceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
