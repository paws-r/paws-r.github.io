<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_delete_permission_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one version of a customer managed permission

### Description

Deletes one version of a customer managed permission. The version you
specify must not be attached to any resource share and must not be the
default version for the permission.

If a customer managed permission has the maximum of 5 versions, then you
must delete at least one version before you can create another.

### Usage

    ram_delete_permission_version(permissionArn, permissionVersion,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_delete_permission_version_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the permission with the version you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_delete_permission_version_:_permissionVersion">permissionVersion</code></td>
<td><p>[required] Specifies the version number to delete.</p>
<p>You can't delete the default version for a customer managed
permission.</p>
<p>You can't delete a version if it's the only version of the
permission. You must either first create another version, or delete the
permission completely.</p>
<p>You can't delete a version if it is attached to any resource shares.
If the version is the default, you must first use
<code>set_default_permission_version</code> to set a different version
as the default for the customer managed permission, and then use
<code>associate_resource_share_permission</code> to update your resource
shares to use the new default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_delete_permission_version_:_clientToken">clientToken</code></td>
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

    svc$delete_permission_version(
      permissionArn = "string",
      permissionVersion = 123,
      clientToken = "string"
    )
