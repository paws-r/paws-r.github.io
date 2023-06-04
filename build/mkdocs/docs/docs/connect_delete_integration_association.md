<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_integration_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Web Services resource association from an Amazon Connect instance

### Description

Deletes an Amazon Web Services resource association from an Amazon
Connect instance. The association must not have any use cases associated
with it.

### Usage

    connect_delete_integration_association(InstanceId,
      IntegrationAssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_integration_association_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_integration_association_:_IntegrationAssociationId">IntegrationAssociationId</code></td>
<td><p>[required] The identifier for the integration
association.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_integration_association(
      InstanceId = "string",
      IntegrationAssociationId = "string"
    )
