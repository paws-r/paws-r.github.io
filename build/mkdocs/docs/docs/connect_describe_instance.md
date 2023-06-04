<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Returns the current state of the specified instance identifier. It
tracks the instance while it is being created and returns an error
status, if applicable.

If an instance is not created successfully, the instance status reason
field returns details relevant to the reason. The instance in a failed
state is returned only for 24 hours after the CreateInstance API was
invoked.

### Usage

    connect_describe_instance(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instance = list(
        Id = "string",
        Arn = "string",
        IdentityManagementType = "SAML"|"CONNECT_MANAGED"|"EXISTING_DIRECTORY",
        InstanceAlias = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        ServiceRole = "string",
        InstanceStatus = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED",
        StatusReason = list(
          Message = "string"
        ),
        InboundCallsEnabled = TRUE|FALSE,
        OutboundCallsEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_instance(
      InstanceId = "string"
    )
