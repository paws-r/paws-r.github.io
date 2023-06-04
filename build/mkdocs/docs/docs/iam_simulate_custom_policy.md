<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_simulate_custom_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions

### Description

Simulate how a set of IAM policies and optionally a resource-based
policy works with a list of API operations and Amazon Web Services
resources to determine the policies' effective permissions. The policies
are provided as strings.

The simulation does not perform the API operations; it only checks the
authorization to determine if the simulated policies allow or deny the
operations. You can simulate resources that don't exist in your account.

If you want to simulate existing policies that are attached to an IAM
user, group, or role, use `simulate_principal_policy` instead.

Context keys are variables that are maintained by Amazon Web Services
and its services and which provide details about the context of an API
query request. You can use the `Condition` element of an IAM policy to
evaluate context keys. To get the list of context keys that the policies
require for correct simulation, use
`get_context_keys_for_custom_policy`.

If the output is long, you can use `MaxItems` and `Marker` parameters to
paginate the results.

The IAM policy simulator evaluates statements in the identity-based
policy and the inputs that you provide during simulation. The policy
simulator results can differ from your live Amazon Web Services
environment. We recommend that you check your policies against your live
Amazon Web Services environment after testing using the policy simulator
to confirm that you have the desired results. For more information about
using the policy simulator, see [Testing IAM policies with the IAM
policy
simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html)
in the *IAM User Guide*.

### Usage

    iam_simulate_custom_policy(PolicyInputList,
      PermissionsBoundaryPolicyInputList, ActionNames, ResourceArns,
      ResourcePolicy, ResourceOwner, CallerArn, ContextEntries,
      ResourceHandlingOption, MaxItems, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_simulate_custom_policy_:_PolicyInputList">PolicyInputList</code></td>
<td><p>[required] A list of policy documents to include in the
simulation. Each document is specified as a string containing the
complete, valid JSON text of an IAM policy. Do not include any
resource-based policies in this parameter. Any resource-based policy
must be submitted with the <code>ResourcePolicy</code> parameter. The
policies cannot be "scope-down" policies, such as you could include in a
call to <a
href="https://docs.aws.amazon.com/IAM/latest/APIReference/">GetFederationToken</a>
or one of the <a
href="https://docs.aws.amazon.com/IAM/latest/APIReference/">AssumeRole</a>
API operations. In other words, do not use policies designed to restrict
what a user can do while using the temporary credentials.</p>
<p>The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM
and STS character quotas</a>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="iam_simulate_custom_policy_:_PermissionsBoundaryPolicyInputList">PermissionsBoundaryPolicyInputList</code></td>
<td><p>The IAM permissions boundary policy to simulate. The permissions
boundary sets the maximum permissions that an IAM entity can have. You
can input only one permissions boundary when you pass a policy to this
operation. For more information about permissions boundaries, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions
boundaries for IAM entities</a> in the <em>IAM User Guide</em>. The
policy input is specified as a string that contains the complete, valid
JSON text of a permissions boundary policy.</p>
<p>The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM
and STS character quotas</a>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="iam_simulate_custom_policy_:_ActionNames">ActionNames</code></td>
<td><p>[required] A list of names of API operations to evaluate in the
simulation. Each operation is evaluated against each resource. Each
operation must include the service identifier, such as
<code>iam:CreateUser</code>. This operation does not support using
wildcards (*) in an action name.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_simulate_custom_policy_:_ResourceArns">ResourceArns</code></td>
<td><p>A list of ARNs of Amazon Web Services resources to include in the
simulation. If this parameter is not provided, then the value defaults
to <code>*</code> (all resources). Each API in the
<code>ActionNames</code> parameter is evaluated for each resource in
this list. The simulation determines the access result (allowed or
denied) of each combination and reports it in the response. You can
simulate resources that don't exist in your account.</p>
<p>The simulation does not automatically retrieve policies for the
specified resources. If you want to include a resource policy in the
simulation, then you must include the policy as a string in the
<code>ResourcePolicy</code> parameter.</p>
<p>If you include a <code>ResourcePolicy</code>, then it must be
applicable to all of the resources included in the simulation or you
receive an invalid input error.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p>
<p>Simulation of resource-based policies isn't supported for IAM
roles.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_simulate_custom_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>A resource-based policy to include in the simulation provided as
a string. Each resource in the simulation is treated as if it had this
policy attached. You can include only one resource-based policy in a
simulation.</p>
<p>The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM
and STS character quotas</a>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul>
<p>Simulation of resource-based policies isn't supported for IAM
roles.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_simulate_custom_policy_:_ResourceOwner">ResourceOwner</code></td>
<td><p>An ARN representing the Amazon Web Services account ID that
specifies the owner of any simulated resource that does not identify its
owner in the resource ARN. Examples of resource ARNs include an S3
bucket or object. If <code>ResourceOwner</code> is specified, it is also
used as the account owner of any <code>ResourcePolicy</code> included in
the simulation. If the <code>ResourceOwner</code> parameter is not
specified, then the owner of the resources and the resource policy
defaults to the account of the identity provided in
<code>CallerArn</code>. This parameter is required only if you specify a
resource-based policy and account that owns the resource is different
from the account that owns the simulated calling user
<code>CallerArn</code>.</p>
<p>The ARN for an account uses the following syntax:
<code>arn:aws:iam::AWS-account-ID:root</code>. For example, to represent
the account with the 112233445566 ID, use the following ARN: <code
style="white-space: pre;">⁠arn:aws:iam::112233445566-ID:root⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_simulate_custom_policy_:_CallerArn">CallerArn</code></td>
<td><p>The ARN of the IAM user that you want to use as the simulated
caller of the API operations. <code>CallerArn</code> is required if you
include a <code>ResourcePolicy</code> so that the policy's
<code>Principal</code> element has a value to use in evaluating the
policy.</p>
<p>You can specify only the ARN of an IAM user. You cannot specify the
ARN of an assumed role, federated user, or a service principal.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_simulate_custom_policy_:_ContextEntries">ContextEntries</code></td>
<td><p>A list of context keys and corresponding values for the
simulation to use. Whenever a context key is evaluated in one of the
simulated IAM permissions policies, the corresponding value is
supplied.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_simulate_custom_policy_:_ResourceHandlingOption">ResourceHandlingOption</code></td>
<td><p>Specifies the type of simulation to run. Different API operations
that support resource-based policies require different combinations of
resources. By specifying the type of simulation to run, you enable the
policy simulator to enforce the presence of the required resources to
ensure reliable simulation results. If your simulation does not match
one of the following scenarios, then you can omit this parameter. The
following list shows each of the supported scenario values and the
resources that you must define to run the simulation.</p>
<p>Each of the EC2 scenarios requires that you specify instance, image,
and security group resources. If your scenario includes an EBS volume,
then you must specify that volume as a resource. If the EC2 scenario
includes VPC, then you must supply the network interface resource. If it
includes an IP subnet, then you must specify the subnet resource. For
more information on the EC2 scenario options, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-classic-platform.html">Supported
platforms</a> in the <em>Amazon EC2 User Guide</em>.</p>
<ul>
<li><p><strong>EC2-VPC-InstanceStore</strong></p>
<p>instance, image, security group, network interface</p></li>
<li><p><strong>EC2-VPC-InstanceStore-Subnet</strong></p>
<p>instance, image, security group, network interface, subnet</p></li>
<li><p><strong>EC2-VPC-EBS</strong></p>
<p>instance, image, security group, network interface, volume</p></li>
<li><p><strong>EC2-VPC-EBS-Subnet</strong></p>
<p>instance, image, security group, network interface, subnet,
volume</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="iam_simulate_custom_policy_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_simulate_custom_policy_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationResults = list(
        list(
          EvalActionName = "string",
          EvalResourceName = "string",
          EvalDecision = "allowed"|"explicitDeny"|"implicitDeny",
          MatchedStatements = list(
            list(
              SourcePolicyId = "string",
              SourcePolicyType = "user"|"group"|"role"|"aws-managed"|"user-managed"|"resource"|"none",
              StartPosition = list(
                Line = 123,
                Column = 123
              ),
              EndPosition = list(
                Line = 123,
                Column = 123
              )
            )
          ),
          MissingContextValues = list(
            "string"
          ),
          OrganizationsDecisionDetail = list(
            AllowedByOrganizations = TRUE|FALSE
          ),
          PermissionsBoundaryDecisionDetail = list(
            AllowedByPermissionsBoundary = TRUE|FALSE
          ),
          EvalDecisionDetails = list(
            "allowed"|"explicitDeny"|"implicitDeny"
          ),
          ResourceSpecificResults = list(
            list(
              EvalResourceName = "string",
              EvalResourceDecision = "allowed"|"explicitDeny"|"implicitDeny",
              MatchedStatements = list(
                list(
                  SourcePolicyId = "string",
                  SourcePolicyType = "user"|"group"|"role"|"aws-managed"|"user-managed"|"resource"|"none",
                  StartPosition = list(
                    Line = 123,
                    Column = 123
                  ),
                  EndPosition = list(
                    Line = 123,
                    Column = 123
                  )
                )
              ),
              MissingContextValues = list(
                "string"
              ),
              EvalDecisionDetails = list(
                "allowed"|"explicitDeny"|"implicitDeny"
              ),
              PermissionsBoundaryDecisionDetail = list(
                AllowedByPermissionsBoundary = TRUE|FALSE
              )
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$simulate_custom_policy(
      PolicyInputList = list(
        "string"
      ),
      PermissionsBoundaryPolicyInputList = list(
        "string"
      ),
      ActionNames = list(
        "string"
      ),
      ResourceArns = list(
        "string"
      ),
      ResourcePolicy = "string",
      ResourceOwner = "string",
      CallerArn = "string",
      ContextEntries = list(
        list(
          ContextKeyName = "string",
          ContextKeyValues = list(
            "string"
          ),
          ContextKeyType = "string"|"stringList"|"numeric"|"numericList"|"boolean"|"booleanList"|"ip"|"ipList"|"binary"|"binaryList"|"date"|"dateList"
        )
      ),
      ResourceHandlingOption = "string",
      MaxItems = 123,
      Marker = "string"
    )
