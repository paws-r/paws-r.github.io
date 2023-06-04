<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_deregister_managed_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the server or virtual machine from the list of registered servers

### Description

Removes the server or virtual machine from the list of registered
servers. You can reregister the node again at any time. If you don't
plan to use Run Command on the server, we suggest uninstalling SSM Agent
first.

### Usage

    ssm_deregister_managed_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_deregister_managed_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID assigned to the managed node when you
registered it using the activation process.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_managed_instance(
      InstanceId = "string"
    )
