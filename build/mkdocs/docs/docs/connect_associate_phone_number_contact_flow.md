<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_phone_number_contact_flow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a flow with a phone number claimed to your Amazon Connect instance

### Description

Associates a flow with a phone number claimed to your Amazon Connect
instance.

If the number is claimed to a traffic distribution group, and you are
calling this API using an instance in the Amazon Web Services Region
where the traffic distribution group was created, you can use either a
full phone number ARN or UUID value for the `PhoneNumberId` URI request
parameter. However, if the number is claimed to a traffic distribution
group and you are calling this API using an instance in the alternate
Amazon Web Services Region associated with the traffic distribution
group, you must provide a full phone number ARN. If a UUID is provided
in this scenario, you will receive a `ResourceNotFoundException`.

### Usage

    connect_associate_phone_number_contact_flow(PhoneNumberId, InstanceId,
      ContactFlowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_phone_number_contact_flow_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] A unique identifier for the phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_associate_phone_number_contact_flow_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_associate_phone_number_contact_flow_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_phone_number_contact_flow(
      PhoneNumberId = "string",
      InstanceId = "string",
      ContactFlowId = "string"
    )
