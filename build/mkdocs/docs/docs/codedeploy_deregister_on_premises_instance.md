<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_deregister_on_premises_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters an on-premises instance

### Description

Deregisters an on-premises instance.

### Usage

    codedeploy_deregister_on_premises_instance(instanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_deregister_on_premises_instance_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the on-premises instance to
deregister.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_on_premises_instance(
      instanceName = "string"
    )
