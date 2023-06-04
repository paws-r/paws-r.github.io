<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_audit_stream_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the configuration for delivering audit streams to the customer account

### Description

Describes the configuration for delivering audit streams to the customer
account.

### Usage

    worklink_describe_audit_stream_configuration(FleetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_describe_audit_stream_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuditStreamArn = "string"
    )

### Request syntax

    svc$describe_audit_stream_configuration(
      FleetArn = "string"
    )
