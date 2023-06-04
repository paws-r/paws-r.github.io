<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_entities_for_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all IAM users, groups, and roles that the specified managed policy is attached to

### Description

Lists all IAM users, groups, and roles that the specified managed policy
is attached to.

You can use the optional `EntityFilter` parameter to limit the results
to a particular type of entity (users, groups, or roles). For example,
to list only the roles that are attached to the specified policy, set
`EntityFilter` to `Role`.

You can paginate the results using the `MaxItems` and `Marker`
parameters.

### Usage

    iam_list_entities_for_policy(PolicyArn, EntityFilter, PathPrefix,
      PolicyUsageFilter, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_entities_for_policy_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy for
which you want the versions.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_entities_for_policy_:_EntityFilter">EntityFilter</code></td>
<td><p>The entity type to use for filtering the results.</p>
<p>For example, when <code>EntityFilter</code> is <code>Role</code>,
only the roles that are attached to the specified policy are returned.
This parameter is optional. If it is not included, all attached entities
(users, groups, and roles) are returned. The argument for this parameter
must be one of the valid values listed below.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_entities_for_policy_:_PathPrefix">PathPrefix</code></td>
<td><p>The path prefix for filtering the results. This parameter is
optional. If it is not included, it defaults to a slash (/), listing all
entities.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_entities_for_policy_:_PolicyUsageFilter">PolicyUsageFilter</code></td>
<td><p>The policy usage method to use for filtering the results.</p>
<p>To list only permissions policies,
set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To
list only the policies used to set permissions boundaries, set the value
to <code>PermissionsBoundary</code>.</p>
<p>This parameter is optional. If it is not included, all policies are
returned.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_entities_for_policy_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_entities_for_policy_:_MaxItems">MaxItems</code></td>
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
      PolicyGroups = list(
        list(
          GroupName = "string",
          GroupId = "string"
        )
      ),
      PolicyUsers = list(
        list(
          UserName = "string",
          UserId = "string"
        )
      ),
      PolicyRoles = list(
        list(
          RoleName = "string",
          RoleId = "string"
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_entities_for_policy(
      PolicyArn = "string",
      EntityFilter = "User"|"Role"|"Group"|"LocalManagedPolicy"|"AWSManagedPolicy",
      PathPrefix = "string",
      PolicyUsageFilter = "PermissionsPolicy"|"PermissionsBoundary",
      Marker = "string",
      MaxItems = 123
    )
