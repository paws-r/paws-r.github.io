<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_create_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a list of changes that will be applied to a stack so that you can review the changes before executing them

### Description

Creates a list of changes that will be applied to a stack so that you
can review the changes before executing them. You can create a change
set for a stack that doesn't exist or an existing stack. If you create a
change set for a stack that doesn't exist, the change set shows all of
the resources that CloudFormation will create. If you create a change
set for an existing stack, CloudFormation compares the stack's
information with the information that you submit in the change set and
lists the differences. Use change sets to understand which resources
CloudFormation will create or change, and how it will change resources
in an existing stack, before you create or update a stack.

To create a change set for a stack that doesn't exist, for the
`ChangeSetType` parameter, specify `CREATE`. To create a change set for
an existing stack, specify `UPDATE` for the `ChangeSetType` parameter.
To create a change set for an import operation, specify `IMPORT` for the
`ChangeSetType` parameter. After the `create_change_set` call
successfully completes, CloudFormation starts creating the change set.
To check the status of the change set or to review it, use the
`describe_change_set` action.

When you are satisfied with the changes the change set will make,
execute the change set by using the `execute_change_set` action.
CloudFormation doesn't make changes until you execute the change set.

To create a change set for the entire stack hierarchy, set
`IncludeNestedStacks` to `True`.

### Usage

    cloudformation_create_change_set(StackName, TemplateBody, TemplateURL,
      UsePreviousTemplate, Parameters, Capabilities, ResourceTypes, RoleARN,
      RollbackConfiguration, NotificationARNs, Tags, ChangeSetName,
      ClientToken, Description, ChangeSetType, ResourcesToImport,
      IncludeNestedStacks)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_StackName">StackName</code></td>
<td><p>[required] The name or the unique ID of the stack for which you
are creating a change set. CloudFormation generates the change set by
comparing this stack's information with the information that you submit,
such as a modified template or different parameter input
values.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_TemplateBody">TemplateBody</code></td>
<td><p>A structure that contains the body of the revised template, with
a minimum length of 1 byte and a maximum length of 51,200 bytes.
CloudFormation generates the change set by comparing this template with
the template of the stack that you specified.</p>
<p>Conditional: You must specify only <code>TemplateBody</code> or
<code>TemplateURL</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_TemplateURL">TemplateURL</code></td>
<td><p>The location of the file that contains the revised template. The
URL must point to a template (max size: 460,800 bytes) that's located in
an Amazon S3 bucket or a Systems Manager document. CloudFormation
generates the change set by comparing this template with the stack that
you specified.</p>
<p>Conditional: You must specify only <code>TemplateBody</code> or
<code>TemplateURL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_UsePreviousTemplate">UsePreviousTemplate</code></td>
<td><p>Whether to reuse the template that's associated with the stack to
create the change set.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_Parameters">Parameters</code></td>
<td><p>A list of <code>Parameter</code> structures that specify input
parameters for the change set. For more information, see the Parameter
data type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_Capabilities">Capabilities</code></td>
<td><p>In some cases, you must explicitly acknowledge that your stack
template contains certain capabilities in order for CloudFormation to
create the stack.</p>
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
IAM resources in CloudFormation templates</a>.</p></li>
<li><p><code>CAPABILITY_AUTO_EXPAND</code></p>
<p>Some template contain macros. Macros perform custom processing on
templates; this can include simple actions like find-and-replace
operations, all the way to extensive transformations of entire
templates. Because of this, users typically create a change set from the
processed template, so that they can review the changes resulting from
the macros before actually creating the stack. If your stack template
contains one or more macros, and you choose to create a stack directly
from the processed template, without first reviewing the resulting
changes in a change set, you must acknowledge this capability. This
includes the <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a>
and <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
transforms, which are macros hosted by CloudFormation.</p>
<p>This capacity doesn't apply to creating change sets, and specifying
it when creating change sets has no effect.</p>
<p>If you want to create a stack from a stack template that contains
macros <em>and</em> nested stacks, you must create or update the stack
directly from the template using the <code>create_stack</code> or
<code>update_stack</code> action, and specifying this capability.</p>
<p>For more information about macros, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
CloudFormation macros to perform custom processing on
templates</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_ResourceTypes">ResourceTypes</code></td>
<td><p>The template resource types that you have permissions to work
with if you execute this change set, such as <code
style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>, <code
style="white-space: pre;">⁠AWS::EC2::*⁠</code>, or
<code>Custom::MyCustomInstance</code>.</p>
<p>If the list of resource types doesn't include a resource type that
you're updating, the stack update fails. By default, CloudFormation
grants permissions to all resource types. Identity and Access Management
(IAM) uses this parameter for condition keys in IAM policies for
CloudFormation. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling
access with Identity and Access Management</a> in the CloudFormation
User Guide.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_RoleARN">RoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of an Identity and Access
Management (IAM) role that CloudFormation assumes when executing the
change set. CloudFormation uses the role's credentials to make calls on
your behalf. CloudFormation uses this role for all future operations on
the stack. Provided that users have permission to operate on the stack,
CloudFormation uses this role even if the users don't have permission to
pass it. Ensure that the role grants least permission.</p>
<p>If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that is generated from your user
credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_RollbackConfiguration">RollbackConfiguration</code></td>
<td><p>The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_NotificationARNs">NotificationARNs</code></td>
<td><p>The Amazon Resource Names (ARNs) of Amazon Simple Notification
Service (Amazon SNS) topics that CloudFormation associates with the
stack. To remove all associated notification topics, specify an empty
list.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_create_change_set_:_Tags">Tags</code></td>
<td><p>Key-value pairs to associate with this stack. CloudFormation also
propagates these tags to resources in the stack. You can specify a
maximum of 50 tags.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>[required] The name of the change set. The name must be unique
among all change sets that are associated with the specified stack.</p>
<p>A change set name can contain only alphanumeric, case sensitive
characters, and hyphens. It must start with an alphabetical character
and can't exceed 128 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_ClientToken">ClientToken</code></td>
<td><p>A unique identifier for this <code>create_change_set</code>
request. Specify this token if you plan to retry requests so that
CloudFormation knows that you're not attempting to create another change
set with the same name. You might retry <code>create_change_set</code>
requests to ensure that CloudFormation successfully received
them.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_Description">Description</code></td>
<td><p>A description to help you identify this change set.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_ChangeSetType">ChangeSetType</code></td>
<td><p>The type of change set operation. To create a change set for a
new stack, specify <code>CREATE</code>. To create a change set for an
existing stack, specify <code>UPDATE</code>. To create a change set for
an import operation, specify <code>IMPORT</code>.</p>
<p>If you create a change set for a new stack, CloudFormation creates a
stack with a unique stack ID, but no template or resources. The stack
will be in the <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995"><code>REVIEW_IN_PROGRESS</code></a>
state until you execute the change set.</p>
<p>By default, CloudFormation specifies <code>UPDATE</code>. You can't
use the <code>UPDATE</code> type to create a change set for a new stack
or the <code>CREATE</code> type to create a change set for an existing
stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_change_set_:_ResourcesToImport">ResourcesToImport</code></td>
<td><p>The resources to import into your stack.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_change_set_:_IncludeNestedStacks">IncludeNestedStacks</code></td>
<td><p>Creates a change set for the all nested stacks specified in the
template. The default behavior of this action is set to
<code>False</code>. To include nested sets in a change set, specify
<code>True</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      StackId = "string"
    )

### Request syntax

    svc$create_change_set(
      StackName = "string",
      TemplateBody = "string",
      TemplateURL = "string",
      UsePreviousTemplate = TRUE|FALSE,
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
      NotificationARNs = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ChangeSetName = "string",
      ClientToken = "string",
      Description = "string",
      ChangeSetType = "CREATE"|"UPDATE"|"IMPORT",
      ResourcesToImport = list(
        list(
          ResourceType = "string",
          LogicalResourceId = "string",
          ResourceIdentifier = list(
            "string"
          )
        )
      ),
      IncludeNestedStacks = TRUE|FALSE
    )
