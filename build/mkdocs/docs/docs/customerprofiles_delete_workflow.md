<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified workflow and all its corresponding resources

### Description

Deletes the specified workflow and all its corresponding resources. This
is an async process.

### Usage

    customerprofiles_delete_workflow(DomainName, WorkflowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_workflow_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_workflow_:_WorkflowId">WorkflowId</code></td>
<td><p>[required] Unique identifier for the workflow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workflow(
      DomainName = "string",
      WorkflowId = "string"
    )
