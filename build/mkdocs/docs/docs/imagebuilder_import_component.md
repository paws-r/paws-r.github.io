<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_import_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a component and transforms its data into a component document

### Description

Imports a component and transforms its data into a component document.

### Usage

    imagebuilder_import_component(name, semanticVersion, description,
      changeDescription, type, format, platform, data, uri, kmsKeyId, tags,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_import_component_:_name">name</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_component_:_semanticVersion">semanticVersion</code></td>
<td><p>[required] The semantic version of the component. This version
follows the semantic version syntax.</p>
<p>The semantic version has four nodes:
\&lt;major\&gt;.\&lt;minor\&gt;.\&lt;patch\&gt;/\&lt;build\&gt;. You can
assign values for the first three, and can filter on all of them.</p>
<p><strong>Filtering:</strong> With semantic versioning, you have the
flexibility to use wildcards (x) to specify the most recent versions or
nodes when selecting the base image or components for your recipe. When
you use a wildcard in any node, all nodes to the right of the first
wildcard must also be wildcards.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_import_component_:_description">description</code></td>
<td><p>The description of the component. Describes the contents of the
component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_component_:_changeDescription">changeDescription</code></td>
<td><p>The change description of the component. This description
indicates the change that has been made in this version, or what makes
this version different from other versions of this component.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_import_component_:_type">type</code></td>
<td><p>[required] The type of the component denotes whether the
component is used to build the image, or only to test it.</p></td>
</tr>
<tr class="even">
<td><code id="imagebuilder_import_component_:_format">format</code></td>
<td><p>[required] The format of the resource that you want to import as
a component.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_import_component_:_platform">platform</code></td>
<td><p>[required] The platform of the component.</p></td>
</tr>
<tr class="even">
<td><code id="imagebuilder_import_component_:_data">data</code></td>
<td><p>The data of the component. Used to specify the data inline.
Either <code>data</code> or <code>uri</code> can be used to specify the
data within the component.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_import_component_:_uri">uri</code></td>
<td><p>The uri of the component. Must be an Amazon S3 URL and the
requester must have permission to access the Amazon S3 bucket. If you
use Amazon S3, you can specify component content up to your service
quota. Either <code>data</code> or <code>uri</code> can be used to
specify the data within the component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_component_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The ID of the KMS key that should be used to encrypt this
component.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_import_component_:_tags">tags</code></td>
<td><p>The tags of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_component_:_clientToken">clientToken</code></td>
<td><p>[required] The idempotency token of the component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      clientToken = "string",
      componentBuildVersionArn = "string"
    )

### Request syntax

    svc$import_component(
      name = "string",
      semanticVersion = "string",
      description = "string",
      changeDescription = "string",
      type = "BUILD"|"TEST",
      format = "SHELL",
      platform = "Windows"|"Linux",
      data = "string",
      uri = "string",
      kmsKeyId = "string",
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
