<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_delete_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified customer managed permission in the Amazon Web Services Region in which you call this operation

### Description

Deletes the specified customer managed permission in the Amazon Web
Services Region in which you call this operation. You can delete a
customer managed permission only if it isn't attached to any resource
share. The operation deletes all versions associated with the customer
managed permission.

### Usage

    ram_delete_permission(permissionArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_delete_permission_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the customer managed permission that you want
to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_delete_permission_:_clientToken">clientToken</code></td>
<td><p>Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We recommend
that you use a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID
type of value.</a>.</p>
<p>If you don't provide this value, then Amazon Web Services generates a
random one for you.</p>
<p>If you retry the operation with the same <code>ClientToken</code>,
but with different parameters, the retry fails with an
<code>IdempotentParameterMismatch</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      returnValue = TRUE|FALSE,
      clientToken = "string",
      permissionStatus = "ATTACHABLE"|"UNATTACHABLE"|"DELETING"|"DELETED"
    )

### Request syntax

    svc$delete_permission(
      permissionArn = "string",
      clientToken = "string"
    )
