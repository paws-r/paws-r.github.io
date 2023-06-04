<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_notify_resource_deployment_status_change</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Notify Proton of status changes to a provisioned resource when you use self-managed provisioning

### Description

Notify Proton of status changes to a provisioned resource when you use
self-managed provisioning.

For more information, see [Self-managed
provisioning](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self)
in the *Proton User Guide*.

### Usage

    proton_notify_resource_deployment_status_change(deploymentId, outputs,
      resourceArn, status, statusMessage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_notify_resource_deployment_status_change_:_deploymentId">deploymentId</code></td>
<td><p>The deployment ID for your provisioned resource.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_notify_resource_deployment_status_change_:_outputs">outputs</code></td>
<td><p>The provisioned resource state change detail data that's returned
by Proton.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_notify_resource_deployment_status_change_:_resourceArn">resourceArn</code></td>
<td><p>[required] The provisioned resource Amazon Resource Name
(ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="proton_notify_resource_deployment_status_change_:_status">status</code></td>
<td><p>The status of your provisioned resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_notify_resource_deployment_status_change_:_statusMessage">statusMessage</code></td>
<td><p>The deployment status message for your provisioned
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$notify_resource_deployment_status_change(
      deploymentId = "string",
      outputs = list(
        list(
          key = "string",
          valueString = "string"
        )
      ),
      resourceArn = "string",
      status = "IN_PROGRESS"|"FAILED"|"SUCCEEDED",
      statusMessage = "string"
    )
