<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_layer_version_by_arn</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a version of an Lambda layer, with a link to download the layer archive that's valid for 10 minutes

### Description

Returns information about a version of an [Lambda
layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
with a link to download the layer archive that's valid for 10 minutes.

### Usage

    lambda_get_layer_version_by_arn(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_get_layer_version_by_arn_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the layer version.</p></td>
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

    svc$get_layer_version_by_arn(
      Arn = "string"
    )
