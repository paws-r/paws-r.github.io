<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_imports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all stacks that are importing an exported output value

### Description

Lists all stacks that are importing an exported output value. To modify
or remove an exported output value, first use this action to see which
stacks are using it. To see the exported output values in your account,
see `list_exports`.

For more information about importing an exported output value, see the
[`Fn::ImportValue`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.

### Usage

    cloudformation_list_imports(ExportName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_imports_:_ExportName">ExportName</code></td>
<td><p>[required] The name of the exported output value. CloudFormation
returns the stack names that are importing this value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_imports_:_NextToken">NextToken</code></td>
<td><p>A string (provided by the <code>list_imports</code> response
output) that identifies the next page of stacks that are importing the
specified exported output value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Imports = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_imports(
      ExportName = "string",
      NextToken = "string"
    )
