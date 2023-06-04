<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_create_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new component that can be used to build, validate, test, and assess your image

### Description

Creates a new component that can be used to build, validate, test, and
assess your image. The component is based on a YAML document that you
specify using exactly one of the following methods:

-   Inline, using the `data` property in the request body.

-   A URL that points to a YAML document file stored in Amazon S3, using
    the `uri` property in the request body.

### Usage

    imagebuilder_create_component(name, semanticVersion, description,
      changeDescription, platform, supportedOsVersions, data, uri, kmsKeyId,
      tags, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_create_component_:_name">name</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_component_:_semanticVersion">semanticVersion</code></td>
<td><p>[required] The semantic version of the component. This version
follows the semantic version syntax.</p>
<p>The semantic version has four nodes:
\&lt;major\&gt;.\&lt;minor\&gt;.\&lt;patch\&gt;/\&lt;build\&gt;. You can
assign values for the first three, and can filter on all of them.</p>
<p><strong>Assignment:</strong> For the first three nodes you can assign
any positive integer value, including zero, with an upper limit of
2^30-1, or 1073741823 for each node. Image Builder automatically assigns
the build number to the fourth node.</p>
<p><strong>Patterns:</strong> You can use any numeric pattern that
adheres to the assignment requirements for the nodes that you can
assign. For example, you might choose a software version pattern, such
as 1.0.0, or a date, such as 2021.01.01.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_component_:_description">description</code></td>
<td><p>Describes the contents of the component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_component_:_changeDescription">changeDescription</code></td>
<td><p>The change description of the component. Describes what change
has been made in this version, or what makes this version different from
other versions of this component.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_component_:_platform">platform</code></td>
<td><p>[required] The operating system platform of the
component.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_create_component_:_supportedOsVersions">supportedOsVersions</code></td>
<td><p>The operating system (OS) version supported by the component. If
the OS information is available, a prefix match is performed against the
base image OS version during image recipe creation.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_create_component_:_data">data</code></td>
<td><p>Component <code>data</code> contains inline YAML document content
for the component. Alternatively, you can specify the <code>uri</code>
of a YAML document file stored in Amazon S3. However, you cannot specify
both properties.</p></td>
</tr>
<tr class="even">
<td><code id="imagebuilder_create_component_:_uri">uri</code></td>
<td><p>The <code>uri</code> of a YAML component document file. This must
be an S3 URL (<code style="white-space: pre;">⁠s3://bucket/key⁠</code>),
and the requester must have permission to access the S3 bucket it points
to. If you use Amazon S3, you can specify component content up to your
service quota.</p>
<p>Alternatively, you can specify the YAML document inline, using the
component <code>data</code> property. You cannot specify both
properties.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_component_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The ID of the KMS key that is used to encrypt this
component.</p></td>
</tr>
<tr class="even">
<td><code id="imagebuilder_create_component_:_tags">tags</code></td>
<td><p>The tags that apply to the component.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_create_component_:_clientToken">clientToken</code></td>
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

    svc$create_component(
      name = "string",
      semanticVersion = "string",
      description = "string",
      changeDescription = "string",
      platform = "Windows"|"Linux",
      supportedOsVersions = list(
        "string"
      ),
      data = "string",
      uri = "string",
      kmsKeyId = "string",
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
