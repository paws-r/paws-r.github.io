<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_replicate_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replicates an Amazon Connect instance in the specified Amazon Web Services Region

### Description

Replicates an Amazon Connect instance in the specified Amazon Web
Services Region.

For more information about replicating an Amazon Connect instance, see
[Create a replica of your existing Amazon Connect
instance](https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_replicate_instance(InstanceId, ReplicaRegion, ClientToken,
      ReplicaAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_replicate_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the instance.
You can provide the <code>InstanceId</code>, or the entire ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_replicate_instance_:_ReplicaRegion">ReplicaRegion</code></td>
<td><p>[required] The Amazon Web Services Region where to replicate the
Amazon Connect instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_replicate_instance_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_replicate_instance_:_ReplicaAlias">ReplicaAlias</code></td>
<td><p>[required] The alias for the replicated instance. The
<code>ReplicaAlias</code> must be unique.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      Arn = "string"
    )

### Request syntax

    svc$replicate_instance(
      InstanceId = "string",
      ReplicaRegion = "string",
      ClientToken = "string",
      ReplicaAlias = "string"
    )
