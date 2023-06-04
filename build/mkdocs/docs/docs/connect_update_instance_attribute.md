<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_instance_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates the value for the specified attribute type.

### Usage

    connect_update_instance_attribute(InstanceId, AttributeType, Value)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_instance_attribute_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_instance_attribute_:_AttributeType">AttributeType</code></td>
<td><p>[required] The type of attribute.</p>
<p>Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To
access this feature, contact Amazon Web Services Support for
allowlisting.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_instance_attribute_:_Value">Value</code></td>
<td><p>[required] The value for the attribute. Maximum character limit
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_instance_attribute(
      InstanceId = "string",
      AttributeType = "INBOUND_CALLS"|"OUTBOUND_CALLS"|"CONTACTFLOW_LOGS"|"CONTACT_LENS"|"AUTO_RESOLVE_BEST_VOICES"|"USE_CUSTOM_TTS_VOICES"|"EARLY_MEDIA"|"MULTI_PARTY_CONFERENCE"|"HIGH_VOLUME_OUTBOUND"|"ENHANCED_CONTACT_MONITORING",
      Value = "string"
    )
