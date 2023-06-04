<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_type_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about the versions of an extension

### Description

Returns summary information about the versions of an extension.

### Usage

    cloudformation_list_type_versions(Type, TypeName, Arn, MaxResults,
      NextToken, DeprecatedStatus, PublisherId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_list_type_versions_:_Type">Type</code></td>
<td><p>The kind of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_versions_:_TypeName">TypeName</code></td>
<td><p>The name of the extension for which you want version summary
information.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_list_type_versions_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension for which you
want version summary information.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_type_versions_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all of the
remaining results, the response object's <code>NextToken</code>
parameter value is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
<code>NextToken</code> parameter. If there are no remaining results, the
previous response object's <code>NextToken</code> parameter is set to
<code>null</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_type_versions_:_DeprecatedStatus">DeprecatedStatus</code></td>
<td><p>The deprecation status of the extension versions that you want to
get summary information about.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>LIVE</code>: The extension version is registered and can be
used in CloudFormation operations, dependent on its provisioning
behavior and visibility scope.</p></li>
<li><p><code>DEPRECATED</code>: The extension version has been
deregistered and can no longer be used in CloudFormation
operations.</p></li>
</ul>
<p>The default is <code>LIVE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_type_versions_:_PublisherId">PublisherId</code></td>
<td><p>The publisher ID of the extension publisher.</p>
<p>Extensions published by Amazon aren't assigned a publisher
ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypeVersionSummaries = list(
        list(
          Type = "RESOURCE"|"MODULE"|"HOOK",
          TypeName = "string",
          VersionId = "string",
          IsDefaultVersion = TRUE|FALSE,
          Arn = "string",
          TimeCreated = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          PublicVersionNumber = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_type_versions(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      Arn = "string",
      MaxResults = 123,
      NextToken = "string",
      DeprecatedStatus = "LIVE"|"DEPRECATED",
      PublisherId = "string"
    )
