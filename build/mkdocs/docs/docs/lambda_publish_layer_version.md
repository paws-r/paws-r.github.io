<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_publish_layer_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Lambda layer from a ZIP archive

### Description

Creates an [Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
from a ZIP archive. Each time you call `publish_layer_version` with the
same layer name, a new version is created.

Add layers to your function with `create_function` or
`update_function_configuration`.

### Usage

    lambda_publish_layer_version(LayerName, Description, Content,
      CompatibleRuntimes, LicenseInfo, CompatibleArchitectures)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_publish_layer_version_:_LayerName">LayerName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_publish_layer_version_:_Description">Description</code></td>
<td><p>The description of the version.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_publish_layer_version_:_Content">Content</code></td>
<td><p>[required] The function layer archive.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_publish_layer_version_:_CompatibleRuntimes">CompatibleRuntimes</code></td>
<td><p>A list of compatible <a
href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function
runtimes</a>. Used for filtering with <code>list_layers</code> and
<code>list_layer_versions</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_publish_layer_version_:_LicenseInfo">LicenseInfo</code></td>
<td><p>The layer's software license. It can be any of the following:</p>
<ul>
<li><p>An <a href="https://spdx.org/licenses/">SPDX license
identifier</a>. For example, <code>MIT</code>.</p></li>
<li><p>The URL of a license hosted on the internet. For example, <code
style="white-space: pre;">⁠https://opensource.org/licenses/MIT⁠</code>.</p></li>
<li><p>The full text of the license.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lambda_publish_layer_version_:_CompatibleArchitectures">CompatibleArchitectures</code></td>
<td><p>A list of compatible <a
href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction
set architectures</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Content = list(
        Location = "string",
        CodeSha256 = "string",
        CodeSize = 123,
        SigningProfileVersionArn = "string",
        SigningJobArn = "string"
      ),
      LayerArn = "string",
      LayerVersionArn = "string",
      Description = "string",
      CreatedDate = "string",
      Version = 123,
      CompatibleRuntimes = list(
        "nodejs"|"nodejs4.3"|"nodejs6.10"|"nodejs8.10"|"nodejs10.x"|"nodejs12.x"|"nodejs14.x"|"nodejs16.x"|"java8"|"java8.al2"|"java11"|"python2.7"|"python3.6"|"python3.7"|"python3.8"|"python3.9"|"dotnetcore1.0"|"dotnetcore2.0"|"dotnetcore2.1"|"dotnetcore3.1"|"dotnet6"|"nodejs4.3-edge"|"go1.x"|"ruby2.5"|"ruby2.7"|"provided"|"provided.al2"|"nodejs18.x"|"python3.10"|"java17"
      ),
      LicenseInfo = "string",
      CompatibleArchitectures = list(
        "x86_64"|"arm64"
      )
    )

### Request syntax

    svc$publish_layer_version(
      LayerName = "string",
      Description = "string",
      Content = list(
        S3Bucket = "string",
        S3Key = "string",
        S3ObjectVersion = "string",
        ZipFile = raw
      ),
      CompatibleRuntimes = list(
        "nodejs"|"nodejs4.3"|"nodejs6.10"|"nodejs8.10"|"nodejs10.x"|"nodejs12.x"|"nodejs14.x"|"nodejs16.x"|"java8"|"java8.al2"|"java11"|"python2.7"|"python3.6"|"python3.7"|"python3.8"|"python3.9"|"dotnetcore1.0"|"dotnetcore2.0"|"dotnetcore2.1"|"dotnetcore3.1"|"dotnet6"|"nodejs4.3-edge"|"go1.x"|"ruby2.5"|"ruby2.7"|"provided"|"provided.al2"|"nodejs18.x"|"python3.10"|"java17"
      ),
      LicenseInfo = "string",
      CompatibleArchitectures = list(
        "x86_64"|"arm64"
      )
    )
