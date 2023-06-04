<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_security_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a specified security configuration

### Description

Retrieves a specified security configuration.

### Usage

    glue_get_security_configuration(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_security_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the security configuration to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityConfiguration = list(
        Name = "string",
        CreatedTimeStamp = as.POSIXct(
          "2015-01-01"
        ),
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
    )

### Request syntax

    svc$get_security_configuration(
      Name = "string"
    )
