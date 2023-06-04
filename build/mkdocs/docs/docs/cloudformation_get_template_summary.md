<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_get_template_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a new or existing template

### Description

Returns information about a new or existing template. The
`get_template_summary` action is useful for viewing parameter
information, such as default parameter values and parameter types,
before you create or update a stack or stack set.

You can use the `get_template_summary` action when you submit a
template, or you can get template information for a stack set, or a
running or deleted stack.

For deleted stacks, `get_template_summary` returns the template
information for up to 90 days after the stack has been deleted. If the
template doesn't exist, a `ValidationError` is returned.

### Usage

    cloudformation_get_template_summary(TemplateBody, TemplateURL,
      StackName, StackSetName, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_get_template_summary_:_TemplateBody">TemplateBody</code></td>
<td><p>Structure containing the template body with a minimum length of 1
byte and a maximum length of 51,200 bytes. For more information about
templates, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>StackName</code>, <code>StackSetName</code>,
<code>TemplateBody</code>, or <code>TemplateURL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_get_template_summary_:_TemplateURL">TemplateURL</code></td>
<td><p>Location of file containing the template body. The URL must point
to a template (max size: 460,800 bytes) that's located in an Amazon S3
bucket or a Systems Manager document. For more information about
templates, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>StackName</code>, <code>StackSetName</code>,
<code>TemplateBody</code>, or <code>TemplateURL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_get_template_summary_:_StackName">StackName</code></td>
<td><p>The name or the stack ID that's associated with the stack, which
aren't always interchangeable. For running stacks, you can specify
either the stack's name or its unique stack ID. For deleted stack, you
must specify the unique stack ID.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>StackName</code>, <code>StackSetName</code>,
<code>TemplateBody</code>, or <code>TemplateURL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_get_template_summary_:_StackSetName">StackSetName</code></td>
<td><p>The name or unique ID of the stack set from which the stack was
created.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>StackName</code>, <code>StackSetName</code>,
<code>TemplateBody</code>, or <code>TemplateURL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_get_template_summary_:_CallAs">CallAs</code></td>
<td><p>[Service-managed permissions] Specifies whether you are acting as
an account administrator in the organization's management account or as
a delegated administrator in a member account.</p>
<p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for
stack sets with self-managed permissions.</p>
<ul>
<li><p>If you are signed in to the management account, specify
<code>SELF</code>.</p></li>
<li><p>If you are signed in to a delegated administrator account,
specify <code>DELEGATED_ADMIN</code>.</p>
<p>Your Amazon Web Services account must be registered as a delegated
administrator in the management account. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register
a delegated administrator</a> in the <em>CloudFormation User
Guide</em>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameters = list(
        list(
          ParameterKey = "string",
          DefaultValue = "string",
          ParameterType = "string",
          NoEcho = TRUE|FALSE,
          Description = "string",
          ParameterConstraints = list(
            AllowedValues = list(
              "string"
            )
          )
        )
      ),
      Description = "string",
      Capabilities = list(
        "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"
      ),
      CapabilitiesReason = "string",
      ResourceTypes = list(
        "string"
      ),
      Version = "string",
      Metadata = "string",
      DeclaredTransforms = list(
        "string"
      ),
      ResourceIdentifierSummaries = list(
        list(
          ResourceType = "string",
          LogicalResourceIds = list(
            "string"
          ),
          ResourceIdentifiers = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_template_summary(
      TemplateBody = "string",
      TemplateURL = "string",
      StackName = "string",
      StackSetName = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
