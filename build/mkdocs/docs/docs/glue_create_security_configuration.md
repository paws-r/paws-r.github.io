<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_security_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new security configuration

### Description

Creates a new security configuration. A security configuration is a set
of security properties that can be used by Glue. You can use a security
configuration to encrypt data at rest. For information about using
security configurations in Glue, see [Encrypting Data Written by
Crawlers, Jobs, and Development
Endpoints](https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).

### Usage

    glue_create_security_configuration(Name, EncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_create_security_configuration_:_Name">Name</code></td>
<td><p>[required] The name for the new security configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_security_configuration_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>[required] The encryption configuration for the new security
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_security_configuration(
      Name = "string",
      EncryptionConfiguration = list(
        S3Encryption = list(
          list(
            S3EncryptionMode = "DISABLED"|"SSE-KMS"|"SSE-S3",
            KmsKeyArn = "string"
          )
        ),
        CloudWatchEncryption = list(
          CloudWatchEncryptionMode = "DISABLED"|"SSE-KMS",
          KmsKeyArn = "string"
        ),
        JobBookmarksEncryption = list(
          JobBookmarksEncryptionMode = "DISABLED"|"CSE-KMS",
          KmsKeyArn = "string"
        )
      )
    )
