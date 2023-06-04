<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_groups_for_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IAM groups that the specified IAM user belongs to

### Description

Lists the IAM groups that the specified IAM user belongs to.

You can paginate the results using the `MaxItems` and `Marker`
parameters.

### Usage

    iam_list_groups_for_user(UserName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_groups_for_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to list groups for.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_groups_for_user_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_groups_for_user_:_MaxItems">MaxItems</code></td>
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
      Groups = list(
        list(
          Path = "string",
          GroupName = "string",
          GroupId = "string",
          Arn = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_groups_for_user(
      UserName = "string",
      Marker = "string",
      MaxItems = 123
    )

### Examples

    ## Not run: 
    # The following command displays the groups that the IAM user named Bob
    # belongs to.
    svc$list_groups_for_user(
      UserName = "Bob"
    )

    ## End(Not run)
