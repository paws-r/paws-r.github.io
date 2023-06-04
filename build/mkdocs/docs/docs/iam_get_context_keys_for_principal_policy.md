<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_context_keys_for_principal_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity

### Description

Gets a list of all of the context keys referenced in all the IAM
policies that are attached to the specified IAM entity. The entity can
be an IAM user, group, or role. If you specify a user, then the request
also includes all of the policies attached to groups that the user is a
member of.

You can optionally include a list of one or more additional policies,
specified as strings. If you want to include *only* a list of policies
by string, use `get_context_keys_for_custom_policy` instead.

**Note:** This operation discloses information about the permissions
granted to other users. If you do not want users to see other user's
permissions, then consider allowing them to use
`get_context_keys_for_custom_policy` instead.

Context keys are variables maintained by Amazon Web Services and its
services that provide details about the context of an API query request.
Context keys can be evaluated by testing against a value in an IAM
policy. Use `get_context_keys_for_principal_policy` to understand what
key names and values you must supply when you call
`simulate_principal_policy`.

### Usage

    iam_get_context_keys_for_principal_policy(PolicySourceArn,
      PolicyInputList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_context_keys_for_principal_policy_:_PolicySourceArn">PolicySourceArn</code></td>
<td><p>[required] The ARN of a user, group, or role whose policies
contain the context keys that you want listed. If you specify a user,
the list includes context keys that are found in all policies that are
attached to the user. The list also includes all groups that the user is
a member of. If you pick a group or a role, then it includes only those
context keys that are found in policies attached to that entity. Note
that all parameters are shown in unencoded form here for clarity, but
must be URL encoded to be included as a part of a real HTML request.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_get_context_keys_for_principal_policy_:_PolicyInputList">PolicyInputList</code></td>
<td><p>An optional list of additional policies for which you want the
list of context keys that are referenced.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextKeyNames = list(
        "string"
      )
    )

### Request syntax

    svc$get_context_keys_for_principal_policy(
      PolicySourceArn = "string",
      PolicyInputList = list(
        "string"
      )
    )
