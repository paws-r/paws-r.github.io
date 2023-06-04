<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about an extension that has been registered

### Description

Returns detailed information about an extension that has been
registered.

If you specify a `VersionId`, `describe_type` returns information about
that specific extension version. Otherwise, it returns information about
the default extension version.

### Usage

    cloudformation_describe_type(Type, TypeName, Arn, VersionId,
      PublisherId, PublicVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_describe_type_:_Type">Type</code></td>
<td><p>The kind of extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_type_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudformation_describe_type_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_type_:_VersionId">VersionId</code></td>
<td><p>The ID of a specific version of the extension. The version ID is
the value at the end of the Amazon Resource Name (ARN) assigned to the
extension version when it is registered.</p>
<p>If you specify a <code>VersionId</code>, <code>describe_type</code>
returns information about that specific extension version. Otherwise, it
returns information about the default extension version.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_type_:_PublisherId">PublisherId</code></td>
<td><p>The publisher ID of the extension publisher.</p>
<p>Extensions provided by Amazon Web Services are not assigned a
publisher ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_type_:_PublicVersionNumber">PublicVersionNumber</code></td>
<td><p>The version number of a public third-party extension.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      DefaultVersionId = "string",
      IsDefaultVersion = TRUE|FALSE,
      TypeTestsStatus = "PASSED"|"FAILED"|"IN_PROGRESS"|"NOT_TESTED",
      TypeTestsStatusDescription = "string",
      Description = "string",
      Schema = "string",
      ProvisioningType = "NON_PROVISIONABLE"|"IMMUTABLE"|"FULLY_MUTABLE",
      DeprecatedStatus = "LIVE"|"DEPRECATED",
      LoggingConfig = list(
        LogRoleArn = "string",
        LogGroupName = "string"
      ),
      RequiredActivatedTypes = list(
        list(
          TypeNameAlias = "string",
          OriginalTypeName = "string",
          PublisherId = "string",
          SupportedMajorVersions = list(
            123
          )
        )
      ),
      ExecutionRoleArn = "string",
      Visibility = "PUBLIC"|"PRIVATE",
      SourceUrl = "string",
      DocumentationUrl = "string",
      LastUpdated = as.POSIXct(
        "2015-01-01"
      ),
      TimeCreated = as.POSIXct(
        "2015-01-01"
      ),
      ConfigurationSchema = "string",
      PublisherId = "string",
      OriginalTypeName = "string",
      OriginalTypeArn = "string",
      PublicVersionNumber = "string",
      LatestPublicVersion = "string",
      IsActivated = TRUE|FALSE,
      AutoUpdate = TRUE|FALSE
    )

### Request syntax

    svc$describe_type(
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      Arn = "string",
      VersionId = "string",
      PublisherId = "string",
      PublicVersionNumber = "string"
    )
