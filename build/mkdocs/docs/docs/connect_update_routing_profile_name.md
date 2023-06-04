<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_routing_profile_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and description of a routing profile

### Description

Updates the name and description of a routing profile. The request
accepts the following data in JSON format. At least `Name` or
`Description` must be provided.

### Usage

    connect_update_routing_profile_name(InstanceId, RoutingProfileId, Name,
      Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_routing_profile_name_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_routing_profile_name_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_routing_profile_name_:_Name">Name</code></td>
<td><p>The name of the routing profile. Must not be more than 127
characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_routing_profile_name_:_Description">Description</code></td>
<td><p>The description of the routing profile. Must not be more than 250
characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_routing_profile_name(
      InstanceId = "string",
      RoutingProfileId = "string",
      Name = "string",
      Description = "string"
    )
