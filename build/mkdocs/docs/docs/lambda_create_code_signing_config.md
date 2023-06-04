<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_create_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a code signing configuration

### Description

Creates a code signing configuration. A [code signing
configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html)
defines a list of allowed signing profiles and defines the code-signing
validation policy (action to be taken if deployment validation checks
fail).

### Usage

    lambda_create_code_signing_config(Description, AllowedPublishers,
      CodeSigningPolicies)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_create_code_signing_config_:_Description">Description</code></td>
<td><p>Descriptive name for this code signing configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_create_code_signing_config_:_AllowedPublishers">AllowedPublishers</code></td>
<td><p>[required] Signing profiles for this code signing
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_create_code_signing_config_:_CodeSigningPolicies">CodeSigningPolicies</code></td>
<td><p>The code signing policies define the actions to take if the
validation checks fail.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeSigningConfig = list(
        CodeSigningConfigId = "string",
        CodeSigningConfigArn = "string",
        Description = "string",
        AllowedPublishers = list(
          SigningProfileVersionArns = list(
            "string"
          )
        ),
        CodeSigningPolicies = list(
          UntrustedArtifactOnDeployment = "Warn"|"Enforce"
        ),
        LastModified = "string"
      )
    )

### Request syntax

    svc$create_code_signing_config(
      Description = "string",
      AllowedPublishers = list(
        SigningProfileVersionArns = list(
          "string"
        )
      ),
      CodeSigningPolicies = list(
        UntrustedArtifactOnDeployment = "Warn"|"Enforce"
      )
    )
