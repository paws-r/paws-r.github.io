<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description or maximum session duration setting of a role

### Description

Updates the description or maximum session duration setting of a role.

### Usage

    iam_update_role(RoleName, Description, MaxSessionDuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role that you want to modify.</p></td>
</tr>
<tr class="even">
<td><code id="iam_update_role_:_Description">Description</code></td>
<td><p>The new description that you want to apply to the specified
role.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_role_:_MaxSessionDuration">MaxSessionDuration</code></td>
<td><p>The maximum session duration (in seconds) that you want to set
for the specified role. If you do not specify a value for this setting,
the default value of one hour is applied. This setting can have a value
from 1 hour to 12 hours.</p>
<p>Anyone who assumes the role from the CLI or API can use the
<code>DurationSeconds</code> API parameter or the
<code>duration-seconds</code> CLI parameter to request a longer session.
The <code>MaxSessionDuration</code> setting determines the maximum
duration that can be requested using the <code>DurationSeconds</code>
parameter. If users don't specify a value for the
<code>DurationSeconds</code> parameter, their security credentials are
valid for one hour by default. This applies when you use the <code
style="white-space: pre;">⁠AssumeRole*⁠</code> API operations or the <code
style="white-space: pre;">⁠assume-role*⁠</code> CLI operations but does
not apply when you use those operations to create a console URL. For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
IAM roles</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_role(
      RoleName = "string",
      Description = "string",
      MaxSessionDuration = 123
    )
