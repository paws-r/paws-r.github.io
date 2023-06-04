<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_instance_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified instance attribute.

### Usage

    connect_describe_instance_attribute(InstanceId, AttributeType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_instance_attribute_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_instance_attribute_:_AttributeType">AttributeType</code></td>
<td><p>[required] The type of attribute.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attribute = list(
        AttributeType = "INBOUND_CALLS"|"OUTBOUND_CALLS"|"CONTACTFLOW_LOGS"|"CONTACT_LENS"|"AUTO_RESOLVE_BEST_VOICES"|"USE_CUSTOM_TTS_VOICES"|"EARLY_MEDIA"|"MULTI_PARTY_CONFERENCE"|"HIGH_VOLUME_OUTBOUND"|"ENHANCED_CONTACT_MONITORING",
        Value = "string"
      )
    )

### Request syntax

    svc$describe_instance_attribute(
      InstanceId = "string",
      AttributeType = "INBOUND_CALLS"|"OUTBOUND_CALLS"|"CONTACTFLOW_LOGS"|"CONTACT_LENS"|"AUTO_RESOLVE_BEST_VOICES"|"USE_CUSTOM_TTS_VOICES"|"EARLY_MEDIA"|"MULTI_PARTY_CONFERENCE"|"HIGH_VOLUME_OUTBOUND"|"ENHANCED_CONTACT_MONITORING"
    )
