<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_user_routing_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns the specified routing profile to the specified user

### Description

Assigns the specified routing profile to the specified user.

### Usage

    connect_update_user_routing_profile(RoutingProfileId, UserId,
      InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_user_routing_profile_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile for the
user.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_user_routing_profile_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_user_routing_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user_routing_profile(
      RoutingProfileId = "string",
      UserId = "string",
      InstanceId = "string"
    )
