<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the Amazon Connect instance.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days before
you can restart creating and deleting instances in your account.

### Usage

    connect_delete_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_instance(
      InstanceId = "string"
    )
