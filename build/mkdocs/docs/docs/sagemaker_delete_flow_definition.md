<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_flow_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified flow definition

### Description

Deletes the specified flow definition.

### Usage

    sagemaker_delete_flow_definition(FlowDefinitionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_flow_definition_:_FlowDefinitionName">FlowDefinitionName</code></td>
<td><p>[required] The name of the flow definition you are
deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_flow_definition(
      FlowDefinitionName = "string"
    )
