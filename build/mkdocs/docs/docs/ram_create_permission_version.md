<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_create_permission_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of the specified customer managed permission

### Description

Creates a new version of the specified customer managed permission. The
new version is automatically set as the default version of the customer
managed permission. New resource shares automatically use the default
permission. Existing resource shares continue to use their original
permission versions, but you can use `replace_permission_associations`
to update them.

If the specified customer managed permission already has the maximum of
5 versions, then you must delete one of the existing versions before you
can create a new one.

### Usage

    ram_create_permission_version(permissionArn, policyTemplate,
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
id="ram_create_permission_version_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the customer managed permission you're
creating a new version for.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_create_permission_version_:_policyTemplate">policyTemplate</code></td>
<td><p>[required] A string in JSON format string that contains the
following elements of a resource-based policy:</p>
<ul>
<li><p><strong>Effect</strong>: must be set to
<code>ALLOW</code>.</p></li>
<li><p><strong>Action</strong>: specifies the actions that are allowed
by this customer managed permission. The list must contain only actions
that are supported by the specified resource type. For a list of all
actions supported by each resource type, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions,
resources, and condition keys for Amazon Web Services services</a> in
the <em>Identity and Access Management User Guide</em>.</p></li>
<li><p><strong>Condition</strong>: (optional) specifies conditional
parameters that must evaluate to true when a user attempts an action for
that action to be allowed. For more information about the Condition
element, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM
policies: Condition element</a> in the <em>Identity and Access
Management User Guide</em>.</p></li>
</ul>
<p>This template can't include either the <code>Resource</code> or
<code>Principal</code> elements. Those are both filled in by RAM when it
instantiates the resource-based policy on each resource shared using
this managed permission. The <code>Resource</code> comes from the ARN of
the specific resource that you are sharing. The <code>Principal</code>
comes from the list of identities added to the resource share.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_create_permission_version_:_clientToken">clientToken</code></td>
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
      permission = list(
        arn = "string",
        version = "string",
        defaultVersion = TRUE|FALSE,
        name = "string",
        resourceType = "string",
        permission = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        isResourceTypeDefault = TRUE|FALSE,
        permissionType = "CUSTOMER_MANAGED"|"AWS_MANAGED",
        featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
        status = "ATTACHABLE"|"UNATTACHABLE"|"DELETING"|"DELETED",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      ),
      clientToken = "string"
    )

### Request syntax

    svc$create_permission_version(
      permissionArn = "string",
      policyTemplate = "string",
      clientToken = "string"
    )
