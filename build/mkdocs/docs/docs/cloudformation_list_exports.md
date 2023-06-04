<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_exports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all exported output values in the account and Region in which you call this action

### Description

Lists all exported output values in the account and Region in which you
call this action. Use this action to see the exported output values that
you can import into other stacks. To import values, use the
[`Fn::ImportValue`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.

For more information, see [CloudFormation export stack output
values](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).

### Usage

    cloudformation_list_exports(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_exports_:_NextToken">NextToken</code></td>
<td><p>A string (provided by the <code>list_exports</code> response
output) that identifies the next page of exported output values that you
asked to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Exports = list(
        list(
          ExportingStackId = "string",
          Name = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_exports(
      NextToken = "string"
    )
