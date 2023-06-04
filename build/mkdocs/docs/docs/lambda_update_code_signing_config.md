<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_update_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the code signing configuration

### Description

Update the code signing configuration. Changes to the code signing
configuration take effect the next time a user tries to deploy a code
package to the function.

### Usage

    lambda_update_code_signing_config(CodeSigningConfigArn, Description,
      AllowedPublishers, CodeSigningPolicies)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_update_code_signing_config_:_CodeSigningConfigArn">CodeSigningConfigArn</code></td>
<td><p>[required] The The Amazon Resource Name (ARN) of the code signing
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_code_signing_config_:_Description">Description</code></td>
<td><p>Descriptive name for this code signing configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_code_signing_config_:_AllowedPublishers">AllowedPublishers</code></td>
<td><p>Signing profiles for this code signing configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_code_signing_config_:_CodeSigningPolicies">CodeSigningPolicies</code></td>
<td><p>The code signing policy.</p></td>
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

    svc$update_code_signing_config(
      CodeSigningConfigArn = "string",
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
