<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_update_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a stack as specified in the template

### Description

Updates a stack as specified in the template. After the call completes
successfully, the stack update starts. You can check the status of the
stack through the `describe_stacks` action.

To get a copy of the template for an existing stack, you can use the
`get_template` action.

For more information about creating an update template, updating a
stack, and monitoring the progress of the update, see [Updating a
Stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).

### Usage

    cloudformation_update_stack(StackName, TemplateBody, TemplateURL,
      UsePreviousTemplate, StackPolicyDuringUpdateBody,
      StackPolicyDuringUpdateURL, Parameters, Capabilities, ResourceTypes,
      RoleARN, RollbackConfiguration, StackPolicyBody, StackPolicyURL,
      NotificationARNs, Tags, DisableRollback, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_StackName">StackName</code></td>
<td><p>[required] The name or unique stack ID of the stack to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_TemplateBody">TemplateBody</code></td>
<td><p>Structure containing the template body with a minimum length of 1
byte and a maximum length of 51,200 bytes. (For more information, go to
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.)</p>
<p>Conditional: You must specify only one of the following parameters:
<code>TemplateBody</code>, <code>TemplateURL</code>, or set the
<code>UsePreviousTemplate</code> to <code>true</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_TemplateURL">TemplateURL</code></td>
<td><p>Location of file containing the template body. The URL must point
to a template that's located in an Amazon S3 bucket or a Systems Manager
document. For more information, go to <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>TemplateBody</code>, <code>TemplateURL</code>, or set the
<code>UsePreviousTemplate</code> to <code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_UsePreviousTemplate">UsePreviousTemplate</code></td>
<td><p>Reuse the existing template that is associated with the stack
that you are updating.</p>
<p>Conditional: You must specify only one of the following parameters:
<code>TemplateBody</code>, <code>TemplateURL</code>, or set the
<code>UsePreviousTemplate</code> to <code>true</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_StackPolicyDuringUpdateBody">StackPolicyDuringUpdateBody</code></td>
<td><p>Structure containing the temporary overriding stack policy body.
You can specify either the <code>StackPolicyDuringUpdateBody</code> or
the <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
<p>If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you don't specify a stack
policy, the current policy that is associated with the stack will be
used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_StackPolicyDuringUpdateURL">StackPolicyDuringUpdateURL</code></td>
<td><p>Location of a file containing the temporary overriding stack
policy. The URL must point to a policy (max size: 16KB) located in an S3
bucket in the same Region as the stack. You can specify either the
<code>StackPolicyDuringUpdateBody</code> or the
<code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
<p>If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you don't specify a stack
policy, the current policy that is associated with the stack will be
used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_Parameters">Parameters</code></td>
<td><p>A list of <code>Parameter</code> structures that specify input
parameters for the stack. For more information, see the <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a>
data type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_Capabilities">Capabilities</code></td>
<td><p>In some cases, you must explicitly acknowledge that your stack
template contains certain capabilities in order for CloudFormation to
update the stack.</p>
<ul>
<li><p><code>CAPABILITY_IAM</code> and
<code>CAPABILITY_NAMED_IAM</code></p>
<p>Some stack templates might include resources that can affect
permissions in your Amazon Web Services account; for example, by
creating new Identity and Access Management (IAM) users. For those
stacks, you must explicitly acknowledge this by specifying one of these
capabilities.</p>
<p>The following IAM resources require you to specify either the
<code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
capability.</p>
<ul>
<li><p>If you have IAM resources, you can specify either
capability.</p></li>
<li><p>If you have IAM resources with custom names, you <em>must</em>
specify <code>CAPABILITY_NAMED_IAM</code>.</p></li>
<li><p>If you don't specify either of these capabilities, CloudFormation
returns an <code>InsufficientCapabilities</code> error.</p></li>
</ul>
<p>If your stack template contains these resources, we suggest that you
review all permissions associated with them and edit their permissions
if necessary.</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">AWS::IAM::AccessKey</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">AWS::IAM::Policy</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">AWS::IAM::User</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a></p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging
IAM Resources in CloudFormation Templates</a>.</p></li>
<li><p><code>CAPABILITY_AUTO_EXPAND</code></p>
<p>Some template contain macros. Macros perform custom processing on
templates; this can include simple actions like find-and-replace
operations, all the way to extensive transformations of entire
templates. Because of this, users typically create a change set from the
processed template, so that they can review the changes resulting from
the macros before actually updating the stack. If your stack template
contains one or more macros, and you choose to update a stack directly
from the processed template, without first reviewing the resulting
changes in a change set, you must acknowledge this capability. This
includes the <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a>
and <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
transforms, which are macros hosted by CloudFormation.</p>
<p>If you want to update a stack from a stack template that contains
macros <em>and</em> nested stacks, you must update the stack directly
from the template using this capability.</p>
<p>You should only update stacks directly from a stack template that
contains macros if you know what processing the macro performs.</p>
<p>Each macro relies on an underlying Lambda service function for
processing stack templates. Be aware that the Lambda function owner can
update the function operation without CloudFormation being notified.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
CloudFormation Macros to Perform Custom Processing on
Templates</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_ResourceTypes">ResourceTypes</code></td>
<td><p>The template resource types that you have permissions to work
with for this update stack action, such as <code
style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>, <code
style="white-space: pre;">⁠AWS::EC2::*⁠</code>, or
<code>Custom::MyCustomInstance</code>.</p>
<p>If the list of resource types doesn't include a resource that you're
updating, the stack update fails. By default, CloudFormation grants
permissions to all resource types. Identity and Access Management (IAM)
uses this parameter for CloudFormation-specific condition keys in IAM
policies. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling
Access with Identity and Access Management</a>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudformation_update_stack_:_RoleARN">RoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of an Identity and Access
Management (IAM) role that CloudFormation assumes to update the stack.
CloudFormation uses the role's credentials to make calls on your behalf.
CloudFormation always uses this role for all future operations on the
stack. Provided that users have permission to operate on the stack,
CloudFormation uses this role even if the users don't have permission to
pass it. Ensure that the role grants least privilege.</p>
<p>If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that is generated from your user
credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_RollbackConfiguration">RollbackConfiguration</code></td>
<td><p>The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_StackPolicyBody">StackPolicyBody</code></td>
<td><p>Structure containing a new stack policy body. You can specify
either the <code>StackPolicyBody</code> or the
<code>StackPolicyURL</code> parameter, but not both.</p>
<p>You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you don't
specify a stack policy, the current policy that is associated with the
stack is unchanged.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_StackPolicyURL">StackPolicyURL</code></td>
<td><p>Location of a file containing the updated stack policy. The URL
must point to a policy (max size: 16KB) located in an S3 bucket in the
same Region as the stack. You can specify either the
<code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
parameter, but not both.</p>
<p>You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you don't
specify a stack policy, the current policy that is associated with the
stack is unchanged.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_NotificationARNs">NotificationARNs</code></td>
<td><p>Amazon Simple Notification Service topic Amazon Resource Names
(ARNs) that CloudFormation associates with the stack. Specify an empty
list to remove all notification topics.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_update_stack_:_Tags">Tags</code></td>
<td><p>Key-value pairs to associate with this stack. CloudFormation also
propagates these tags to supported resources in the stack. You can
specify a maximum number of 50 tags.</p>
<p>If you don't specify this parameter, CloudFormation doesn't modify
the stack's tags. If you specify an empty value, CloudFormation removes
all associated tags.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_stack_:_DisableRollback">DisableRollback</code></td>
<td><p>Preserve the state of previously provisioned resources when an
operation fails.</p>
<p>Default: <code>False</code></p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_update_stack_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this <code>update_stack</code> request.
Specify this token if you plan to retry requests so that CloudFormation
knows that you're not attempting to update a stack with the same name.
You might retry <code>update_stack</code> requests to ensure that
CloudFormation successfully received them.</p>
<p>All events triggered by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a <code>create_stack</code> operation with the
token <code>token1</code>, then all the <code>StackEvents</code>
generated by that operation will have <code>ClientRequestToken</code>
set as <code>token1</code>.</p>
<p>In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console use
the token format <em>Console-StackOperation-ID</em>, which helps you
easily identify the stack operation . For example, if you create a stack
using the console, each stack event would be assigned the same token in
the following format: <code
style="white-space: pre;">⁠Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackId = "string"
    )

### Request syntax

    svc$update_stack(
      StackName = "string",
      TemplateBody = "string",
      TemplateURL = "string",
      UsePreviousTemplate = TRUE|FALSE,
      StackPolicyDuringUpdateBody = "string",
      StackPolicyDuringUpdateURL = "string",
      Parameters = list(
        list(
          ParameterKey = "string",
          ParameterValue = "string",
          UsePreviousValue = TRUE|FALSE,
          ResolvedValue = "string"
        )
      ),
      Capabilities = list(
        "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"
      ),
      ResourceTypes = list(
        "string"
      ),
      RoleARN = "string",
      RollbackConfiguration = list(
        RollbackTriggers = list(
          list(
            Arn = "string",
            Type = "string"
          )
        ),
        MonitoringTimeInMinutes = 123
      ),
      StackPolicyBody = "string",
      StackPolicyURL = "string",
      NotificationARNs = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DisableRollback = TRUE|FALSE,
      ClientRequestToken = "string"
    )
