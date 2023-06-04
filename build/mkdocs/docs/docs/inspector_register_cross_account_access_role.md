<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_register_cross_account_access_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments

### Description

Registers the IAM role that grants Amazon Inspector access to AWS
Services needed to perform security assessments.

### Usage

    inspector_register_cross_account_access_role(roleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_register_cross_account_access_role_:_roleArn">roleArn</code></td>
<td><p>[required] The ARN of the IAM role that grants Amazon Inspector
access to AWS Services needed to perform security assessments.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_cross_account_access_role(
      roleArn = "string"
    )

### Examples

    ## Not run: 
    # Registers the IAM role that Amazon Inspector uses to list your EC2
    # instances at the start of the assessment run or when you call the
    # PreviewAgents action.
    svc$register_cross_account_access_role(
      roleArn = "arn:aws:iam::123456789012:role/inspector"
    )

    ## End(Not run)
