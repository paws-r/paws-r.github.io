<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_deregister_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Marks an extension or extension version as DEPRECATED in the CloudFormation registry, removing it from active use

### Description

Marks an extension or extension version as `DEPRECATED` in the
CloudFormation registry, removing it from active use. Deprecated
extensions or extension versions cannot be used in CloudFormation
operations.

To deregister an entire extension, you must individually deregister all
active versions of that extension. If an extension has only a single
active version, deregistering that version results in the extension
itself being deregistered and marked as deprecated in the registry.

You can't deregister the default version of an extension if there are
other active version of that extension. If you do deregister the default
version of an extension, the extension type itself is deregistered as
well and marked as deprecated.

To view the deprecation status of an extension or extension version, use
`describe_type`.

### Usage

    cloudformation_deregister_type(Arn, Type, TypeName, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudformation_deregister_type_:_Arn">Arn</code></td>
<td><p>The Amazon Resource Name (ARN) of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code id="cloudformation_deregister_type_:_Type">Type</code></td>
<td><p>The kind of extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_deregister_type_:_TypeName">TypeName</code></td>
<td><p>The name of the extension.</p>
<p>Conditional: You must specify either <code>TypeName</code> and
<code>Type</code>, or <code>Arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_deregister_type_:_VersionId">VersionId</code></td>
<td><p>The ID of a specific version of the extension. The version ID is
the value at the end of the Amazon Resource Name (ARN) assigned to the
extension version when it is registered.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_type(
      Arn = "string",
      Type = "RESOURCE"|"MODULE"|"HOOK",
      TypeName = "string",
      VersionId = "string"
    )
