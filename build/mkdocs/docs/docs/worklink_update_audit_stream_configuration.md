<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_audit_stream_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the audit stream configuration for the fleet

### Description

Updates the audit stream configuration for the fleet.

### Usage

    worklink_update_audit_stream_configuration(FleetArn, AuditStreamArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_audit_stream_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_audit_stream_configuration_:_AuditStreamArn">AuditStreamArn</code></td>
<td><p>The ARN of the Amazon Kinesis data stream that receives the audit
events.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_audit_stream_configuration(
      FleetArn = "string",
      AuditStreamArn = "string"
    )
