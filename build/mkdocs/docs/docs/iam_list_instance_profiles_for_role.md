<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_instance_profiles_for_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the instance profiles that have the specified associated IAM role

### Description

Lists the instance profiles that have the specified associated IAM role.
If there are none, the operation returns an empty list. For more
information about instance profiles, go to [About instance
profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).

You can paginate the results using the `MaxItems` and `Marker`
parameters.

### Usage

    iam_list_instance_profiles_for_role(RoleName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_instance_profiles_for_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to list instance profiles
for.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_instance_profiles_for_role_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_instance_profiles_for_role_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceProfiles = list(
        list(
          Path = "string",
          InstanceProfileName = "string",
          InstanceProfileId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          Roles = list(
            list(
              Path = "string",
              RoleName = "string",
              RoleId = "string",
              Arn = "string",
              CreateDate = as.POSIXct(
                "2015-01-01"
              ),
              AssumeRolePolicyDocument = "string",
              Description = "string",
              MaxSessionDuration = 123,
              PermissionsBoundary = list(
                PermissionsBoundaryType = "PermissionsBoundaryPolicy",
                PermissionsBoundaryArn = "string"
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              RoleLastUsed = list(
                LastUsedDate = as.POSIXct(
                  "2015-01-01"
                ),
                Region = "string"
              )
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_instance_profiles_for_role(
      RoleName = "string",
      Marker = "string",
      MaxItems = 123
    )
