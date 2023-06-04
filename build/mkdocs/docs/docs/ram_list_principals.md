<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_list_principals</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the principals that you are sharing resources with or that are sharing resources with you

### Description

Lists the principals that you are sharing resources with or that are
sharing resources with you.

### Usage

    ram_list_principals(resourceOwner, resourceArn, principals,
      resourceType, resourceShareArns, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_list_principals_:_resourceOwner">resourceOwner</code></td>
<td><p>[required] Specifies that you want to list information for only
resource shares that match the following:</p>
<ul>
<li><p><strong><code>SELF</code></strong> – principals that your account
is sharing resources with</p></li>
<li><p><strong><code>OTHER-ACCOUNTS</code></strong> – principals that
are sharing resources with your account</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ram_list_principals_:_resourceArn">resourceArn</code></td>
<td><p>Specifies that you want to list principal information for the
resource share with the specified <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_list_principals_:_principals">principals</code></td>
<td><p>Specifies that you want to list information for only the listed
principals.</p>
<p>You can include the following values:</p>
<ul>
<li><p>An Amazon Web Services account ID, for example:
<code>123456789012</code></p></li>
<li><p>An <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an organization in Organizations, for
example: <code
style="white-space: pre;">⁠organizations::123456789012:organization/o-exampleorgid⁠</code></p></li>
<li><p>An ARN of an organizational unit (OU) in Organizations, for
example: <code
style="white-space: pre;">⁠organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123⁠</code></p></li>
<li><p>An ARN of an IAM role, for example: <code
style="white-space: pre;">⁠iam::123456789012:role/rolename⁠</code></p></li>
<li><p>An ARN of an IAM user, for example: <code
style="white-space: pre;">⁠iam::123456789012user/username⁠</code></p></li>
</ul>
<p>Not all resource types can be shared with IAM roles and users. For
more information, see <a
href="https://docs.aws.amazon.com/ram/latest/userguide/#permissions-rbp-supported-resource-types">Sharing
with IAM roles and users</a> in the <em>Resource Access Manager User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_list_principals_:_resourceType">resourceType</code></td>
<td><p>Specifies that you want to list information for only principals
associated with resource shares that include the specified resource
type.</p>
<p>For a list of valid values, query the
<code>list_resource_types</code> operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_list_principals_:_resourceShareArns">resourceShareArns</code></td>
<td><p>Specifies that you want to list information for only principals
associated with the resource shares specified by a list the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ram_list_principals_:_nextToken">nextToken</code></td>
<td><p>Specifies that you want to receive the next page of results.
Valid only if you received a <code>NextToken</code> response in the
previous request. If you did, it indicates that more output is
available. Set this parameter to the value provided by the previous
call's <code>NextToken</code> response to request the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="ram_list_principals_:_maxResults">maxResults</code></td>
<td><p>Specifies the total number of results that you want included on
each page of the response. If you do not include this parameter, it
defaults to a value that is specific to the operation. If additional
items exist beyond the number you specify, the <code>NextToken</code>
response element is returned with a value (not null). Include the
specified value as the <code>NextToken</code> request parameter in the
next call to the operation to get the next part of the results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check
<code>NextToken</code> after every operation to ensure that you receive
all of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      principals = list(
        list(
          id = "string",
          resourceShareArn = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          external = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_principals(
      resourceOwner = "SELF"|"OTHER-ACCOUNTS",
      resourceArn = "string",
      principals = list(
        "string"
      ),
      resourceType = "string",
      resourceShareArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
