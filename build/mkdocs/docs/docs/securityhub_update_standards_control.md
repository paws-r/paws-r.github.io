<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_update_standards_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to control whether an individual security standard control is enabled or disabled

### Description

Used to control whether an individual security standard control is
enabled or disabled.

### Usage

    securityhub_update_standards_control(StandardsControlArn, ControlStatus,
      DisabledReason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_update_standards_control_:_StandardsControlArn">StandardsControlArn</code></td>
<td><p>[required] The ARN of the security standard control to enable or
disable.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_update_standards_control_:_ControlStatus">ControlStatus</code></td>
<td><p>The updated status of the security standard control.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_update_standards_control_:_DisabledReason">DisabledReason</code></td>
<td><p>A description of the reason why you are disabling a security
standard control. If you are disabling a control, then this is
required.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_standards_control(
      StandardsControlArn = "string",
      ControlStatus = "ENABLED"|"DISABLED",
      DisabledReason = "string"
    )

### Examples

    ## Not run: 
    # The following example disables the specified control in the specified
    # security standard.
    svc$update_standards_control(
      ControlStatus = "DISABLED",
      DisabledReason = "Not applicable to my service",
      StandardsControlArn = "arn:aws:securityhub:us-west-1:123456789012:control..."
    )

    ## End(Not run)
