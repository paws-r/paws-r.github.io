<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_account_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account

### Description

Retrieves your account's CloudFormation limits, such as the maximum
number of stacks that you can create in your account. For more
information about account limits, see [CloudFormation
Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html)
in the *CloudFormation User Guide*.

### Usage

    cloudformation_describe_account_limits(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_account_limits_:_NextToken">NextToken</code></td>
<td><p>A string that identifies the next page of limits that you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountLimits = list(
        list(
          Name = "string",
          Value = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_account_limits(
      NextToken = "string"
    )
