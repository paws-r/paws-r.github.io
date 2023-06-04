<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_set_default_permission_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Designates the specified version number as the default version for the specified customer managed permission

### Description

Designates the specified version number as the default version for the
specified customer managed permission. New resource shares automatically
use this new default permission. Existing resource shares continue to
use their original permission version, but you can use
`replace_permission_associations` to update them.

### Usage

    ram_set_default_permission_version(permissionArn, permissionVersion,
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
id="ram_set_default_permission_version_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the customer managed permission whose default
version you want to change.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_set_default_permission_version_:_permissionVersion">permissionVersion</code></td>
<td><p>[required] Specifies the version number that you want to
designate as the default for customer managed permission. To see a list
of all available version numbers, use
<code>list_permission_versions</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_set_default_permission_version_:_clientToken">clientToken</code></td>
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
      clientToken = "string"
    )

### Request syntax

    svc$set_default_permission_version(
      permissionArn = "string",
      permissionVersion = 123,
      clientToken = "string"
    )
