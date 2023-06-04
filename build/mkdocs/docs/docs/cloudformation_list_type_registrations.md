<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_type_registrations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of registration tokens for the specified extension(s)

### Description

Returns a list of registration tokens for the specified extension(s).

### Usage

    cloudformation_list_type_registrations(Type, TypeName, TypeArn,
      RegistrationStatusFilter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_type_registrations_:_Type">Type</code></td>
<td><p>The kind of extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_registrations_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_type_registrations_:_TypeArn">TypeArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_registrations_:_RegistrationStatusFilter">RegistrationStatusFilter</code></td>
<td><p>The current status of the extension registration request.</p>
<p>The default is <code>IN_PROGRESS</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_type_registrations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_registrations_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all the remaining
results, the response object's <code>NextToken</code> parameter value is
set to a token. To retrieve the next set of results, call this action
again and assign that token to the request object's
<code>NextToken</code> parameter. If there are no remaining results, the
previous response object's <code>NextToken</code> parameter is set to
<code>null</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistrationTokenList = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_type_registrations(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      TypeArn = "string",
      RegistrationStatusFilter = "COMPLETE"|"IN_PROGRESS"|"FAILED",
      MaxResults = 123,
      NextToken = "string"
    )
