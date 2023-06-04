<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_set_stack_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets a stack policy for a specified stack

### Description

Sets a stack policy for a specified stack.

### Usage

    cloudformation_set_stack_policy(StackName, StackPolicyBody,
      StackPolicyURL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_set_stack_policy_:_StackName">StackName</code></td>
<td><p>[required] The name or unique stack ID that you want to associate
a policy with.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_set_stack_policy_:_StackPolicyBody">StackPolicyBody</code></td>
<td><p>Structure containing the stack policy body. For more information,
go to <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent
updates to stack resources</a> in the CloudFormation User Guide. You can
specify either the <code>StackPolicyBody</code> or the
<code>StackPolicyURL</code> parameter, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_set_stack_policy_:_StackPolicyURL">StackPolicyURL</code></td>
<td><p>Location of a file containing the stack policy. The URL must
point to a policy (maximum size: 16 KB) located in an Amazon S3 bucket
in the same Amazon Web Services Region as the stack. You can specify
either the <code>StackPolicyBody</code> or the
<code>StackPolicyURL</code> parameter, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_stack_policy(
      StackName = "string",
      StackPolicyBody = "string",
      StackPolicyURL = "string"
    )
