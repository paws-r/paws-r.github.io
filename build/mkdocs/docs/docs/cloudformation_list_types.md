<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about extension that have been registered with CloudFormation

### Description

Returns summary information about extension that have been registered
with CloudFormation.

### Usage

    cloudformation_list_types(Visibility, ProvisioningType,
      DeprecatedStatus, Type, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_types_:_Visibility">Visibility</code></td>
<td><p>The scope at which the extensions are visible and usable in
CloudFormation operations.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>PRIVATE</code>: Extensions that are visible and usable
within this account and region. This includes:</p>
<ul>
<li><p>Private extensions you have registered in this account and
region.</p></li>
<li><p>Public extensions that you have activated in this account and
region.</p></li>
</ul></li>
<li><p><code>PUBLIC</code>: Extensions that are publicly visible and
available to be activated within any Amazon Web Services account. This
includes extensions from Amazon Web Services, in addition to third-party
publishers.</p></li>
</ul>
<p>The default is <code>PRIVATE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_types_:_ProvisioningType">ProvisioningType</code></td>
<td><p>For resource types, the provisioning behavior of the resource
type. CloudFormation determines the provisioning type during
registration, based on the types of handlers in the schema handler
package submitted.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>FULLY_MUTABLE</code>: The resource type includes an update
handler to process updates to the type during stack update
operations.</p></li>
<li><p><code>IMMUTABLE</code>: The resource type doesn't include an
update handler, so the type can't be updated and must instead be
replaced during stack update operations.</p></li>
<li><p><code>NON_PROVISIONABLE</code>: The resource type doesn't include
create, read, and delete handlers, and therefore can't actually be
provisioned.</p></li>
</ul>
<p>The default is <code>FULLY_MUTABLE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_types_:_DeprecatedStatus">DeprecatedStatus</code></td>
<td><p>The deprecation status of the extension that you want to get
summary information about.</p>
<p>Valid values include:</p>
<ul>
<li><p><code>LIVE</code>: The extension is registered for use in
CloudFormation operations.</p></li>
<li><p><code>DEPRECATED</code>: The extension has been deregistered and
can no longer be used in CloudFormation operations.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="cloudformation_list_types_:_Type">Type</code></td>
<td><p>The type of extension.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_list_types_:_Filters">Filters</code></td>
<td><p>Filter criteria to use in determining which extensions to
return.</p>
<p>Filters must be compatible with <code>Visibility</code> to return
valid results. For example, specifying <code>AWS_TYPES</code> for
<code>Category</code> and <code>PRIVATE</code> for
<code>Visibility</code> returns an empty list of types, but specifying
<code>PUBLIC</code> for <code>Visibility</code> returns the desired
list.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_types_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_types_:_NextToken">NextToken</code></td>
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
      TypeSummaries = list(
        list(
          Type = "RESOURCE"|"MODULE"|"HOOK",
          TypeName = "string",
          DefaultVersionId = "string",
          TypeArn = "string",
          LastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          PublisherId = "string",
          OriginalTypeName = "string",
          PublicVersionNumber = "string",
          LatestPublicVersion = "string",
          PublisherIdentity = "AWS_Marketplace"|"GitHub"|"Bitbucket",
          PublisherName = "string",
          IsActivated = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_types(
      Visibility = "PUBLIC"|"PRIVATE",
      ProvisioningType = "NON_PROVISIONABLE"|"IMMUTABLE"|"FULLY_MUTABLE",
      DeprecatedStatus = "LIVE"|"DEPRECATED",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      Filters = list(
        Category = "REGISTERED"|"ACTIVATED"|"THIRD_PARTY"|"AWS_TYPES",
        PublisherId = "string",
        TypeNamePrefix = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
