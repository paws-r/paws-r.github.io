<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_security_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Gets basic information about the security profle.

### Usage

    connect_describe_security_profile(SecurityProfileId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_security_profile_:_SecurityProfileId">SecurityProfileId</code></td>
<td><p>[required] The identifier for the security profle.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_security_profile_:_InstanceId">InstanceId</code></td>
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
      SecurityProfile = list(
        Id = "string",
        OrganizationResourceId = "string",
        Arn = "string",
        SecurityProfileName = "string",
        Description = "string",
        Tags = list(
          "string"
        ),
        AllowedAccessControlTags = list(
          "string"
        ),
        TagRestrictedResources = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_security_profile(
      SecurityProfileId = "string",
      InstanceId = "string"
    )
