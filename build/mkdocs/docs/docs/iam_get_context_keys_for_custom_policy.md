<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_context_keys_for_custom_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all of the context keys referenced in the input policies

### Description

Gets a list of all of the context keys referenced in the input policies.
The policies are supplied as a list of one or more strings. To get the
context keys from policies associated with an IAM user, group, or role,
use `get_context_keys_for_principal_policy`.

Context keys are variables maintained by Amazon Web Services and its
services that provide details about the context of an API query request.
Context keys can be evaluated by testing against a value specified in an
IAM policy. Use `get_context_keys_for_custom_policy` to understand what
key names and values you must supply when you call
`simulate_custom_policy`. Note that all parameters are shown in
unencoded form here for clarity but must be URL encoded to be included
as a part of a real HTML request.

### Usage

    iam_get_context_keys_for_custom_policy(PolicyInputList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_context_keys_for_custom_policy_:_PolicyInputList">PolicyInputList</code></td>
<td><p>[required] A list of policies for which you want the list of
context keys referenced in those policies. Each document is specified as
a string containing the complete, valid JSON text of an IAM policy.</p>
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

    svc$get_context_keys_for_custom_policy(
      PolicyInputList = list(
        "string"
      )
    )
