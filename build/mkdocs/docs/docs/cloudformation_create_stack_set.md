<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_create_stack_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a stack set

### Description

Creates a stack set.

### Usage

    cloudformation_create_stack_set(StackSetName, Description, TemplateBody,
      TemplateURL, StackId, Parameters, Capabilities, Tags,
      AdministrationRoleARN, ExecutionRoleName, PermissionModel,
      AutoDeployment, CallAs, ClientRequestToken, ManagedExecution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name to associate with the stack set. The name
must be unique in the Region where you create your stack set.</p>
<p>A stack name can contain only alphanumeric characters
(case-sensitive) and hyphens. It must start with an alphabetic character
and can't be longer than 128 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_Description">Description</code></td>
<td><p>A description of the stack set. You can use the description to
identify the stack set's purpose or other important
information.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_TemplateBody">TemplateBody</code></td>
<td><p>The structure that contains the template body, with a minimum
length of 1 byte and a maximum length of 51,200 bytes. For more
information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_TemplateURL">TemplateURL</code></td>
<td><p>The location of the file that contains the template body. The URL
must point to a template (maximum size: 460,800 bytes) that's located in
an Amazon S3 bucket or a Systems Manager document. For more information,
see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_StackId">StackId</code></td>
<td><p>The stack ID you are importing into a new stack set. Specify the
Amazon Resource Name (ARN) of the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_Parameters">Parameters</code></td>
<td><p>The input parameters for the stack set template.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_Capabilities">Capabilities</code></td>
<td><p>In some cases, you must explicitly acknowledge that your stack
set template contains certain capabilities in order for CloudFormation
to create the stack set and related stack instances.</p>
<ul>
<li><p><code>CAPABILITY_IAM</code> and
<code>CAPABILITY_NAMED_IAM</code></p>
<p>Some stack templates might include resources that can affect
permissions in your Amazon Web Services account; for example, by
creating new Identity and Access Management (IAM) users. For those stack
sets, you must explicitly acknowledge this by specifying one of these
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
<p>If your stack template contains these resources, we recommend that
you review all permissions associated with them and edit their
permissions if necessary.</p>
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
<p>Some templates reference macros. If your stack set template
references one or more macros, you must create the stack set directly
from the processed template, without first reviewing the resulting
changes in a change set. To create the stack set directly, you must
acknowledge this capability. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
CloudFormation Macros to Perform Custom Processing on Templates</a>.</p>
<p>Stack sets with service-managed permissions don't currently support
the use of macros in templates. (This includes the <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a>
and <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
transforms, which are macros hosted by CloudFormation.) Even if you
specify this capability for a stack set with service-managed
permissions, if you reference a macro in your template the stack set
operation will fail.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="cloudformation_create_stack_set_:_Tags">Tags</code></td>
<td><p>The key-value pairs to associate with this stack set and the
stacks created from it. CloudFormation also propagates these tags to
supported resources that are created in the stacks. A maximum number of
50 tags can be specified.</p>
<p>If you specify tags as part of a <code>create_stack_set</code>
action, CloudFormation checks to see if you have the required IAM
permission to tag resources. If you don't, the entire
<code>create_stack_set</code> action fails with an <code
style="white-space: pre;">⁠access denied⁠</code> error, and the stack set
is not created.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_AdministrationRoleARN">AdministrationRoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role to use to create
this stack set.</p>
<p>Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites:
Granting Permissions for Stack Set Operations</a> in the
<em>CloudFormation User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_ExecutionRoleName">ExecutionRoleName</code></td>
<td><p>The name of the IAM execution role to use to create the stack
set. If you do not specify an execution role, CloudFormation uses the
<code>AWSCloudFormationStackSetExecutionRole</code> role for the stack
set operation.</p>
<p>Specify an IAM role only if you are using customized execution roles
to control which stack resources users and groups can include in their
stack sets.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_PermissionModel">PermissionModel</code></td>
<td><p>Describes how the IAM roles required for stack set operations are
created. By default, <code>SELF-MANAGED</code> is specified.</p>
<ul>
<li><p>With <code>self-managed</code> permissions, you must create the
administrator and execution roles required to deploy to target accounts.
For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
Self-Managed Stack Set Permissions</a>.</p></li>
<li><p>With <code>service-managed</code> permissions, StackSets
automatically creates the IAM roles required to deploy to accounts
managed by Organizations. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">Grant
Service-Managed Stack Set Permissions</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_AutoDeployment">AutoDeployment</code></td>
<td><p>Describes whether StackSets automatically deploys to
Organizations accounts that are added to the target organization or
organizational unit (OU). Specify only if <code>PermissionModel</code>
is <code>SERVICE_MANAGED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_CallAs">CallAs</code></td>
<td><p>[Service-managed permissions] Specifies whether you are acting as
an account administrator in the organization's management account or as
a delegated administrator in a member account.</p>
<p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for
stack sets with self-managed permissions.</p>
<ul>
<li><p>To create a stack set with service-managed permissions while
signed in to the management account, specify <code>SELF</code>.</p></li>
<li><p>To create a stack set with service-managed permissions while
signed in to a delegated administrator account, specify
<code>DELEGATED_ADMIN</code>.</p>
<p>Your Amazon Web Services account must be registered as a delegated
admin in the management account. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register
a delegated administrator</a> in the <em>CloudFormation User
Guide</em>.</p></li>
</ul>
<p>Stack sets with service-managed permissions are created in the
management account, including stack sets that are created by delegated
administrators.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_set_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this <code>create_stack_set</code>
request. Specify this token if you plan to retry requests so that
CloudFormation knows that you're not attempting to create another stack
set with the same name. You might retry <code>create_stack_set</code>
requests to ensure that CloudFormation successfully received them.</p>
<p>If you don't specify an operation ID, the SDK generates one
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_set_:_ManagedExecution">ManagedExecution</code></td>
<td><p>Describes whether StackSets performs non-conflicting operations
concurrently and queues conflicting operations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackSetId = "string"
    )

### Request syntax

    svc$create_stack_set(
      StackSetName = "string",
      Description = "string",
      TemplateBody = "string",
      TemplateURL = "string",
      StackId = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AdministrationRoleARN = "string",
      ExecutionRoleName = "string",
      PermissionModel = "SERVICE_MANAGED"|"SELF_MANAGED",
      AutoDeployment = list(
        Enabled = TRUE|FALSE,
        RetainStacksOnAccountRemoval = TRUE|FALSE
      ),
      CallAs = "SELF"|"DELEGATED_ADMIN",
      ClientRequestToken = "string",
      ManagedExecution = list(
        Active = TRUE|FALSE
      )
    )
